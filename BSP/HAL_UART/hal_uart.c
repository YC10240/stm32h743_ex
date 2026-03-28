#include "main.h"

#include "hal_uart.h"
#if ENABLE_USART_
#include "stdio.h"
#include "stm32h7xx_hal.h"
#include "stm32h7xx_hal_uart.h"
#include "stm32h7xx_hal_gpio.h"
#include "stm32h7xx_hal_dma.h"
#include "stm32h7xx.h"
#include "string.h"
#include "usart.h"

#define huart1 hlpuart1
#define UART_INSTANCE LPUART1
// static CircularQueue_t u1_ctx.tx = {0};
// static CircularQueue_t u1_ctx.rx = {0};
static usart_ctx_t u1_ctx = {0};
__attribute__((section(".ram_d3_buf"), used, aligned(4))) static uint8_t rx_buffer[USART1_BUFFER_SIZE] = {0};
__attribute__((section(".ram_d3_buf"), used, aligned(4))) static uint8_t tx_buffer[USART1_BUFFER_SIZE] = {0};
// UART_HandleTypeDef huart1;
void hal_uart_dma_tc_callback(UART_HandleTypeDef *husart);
void hal_uart_dma_ht_callback(UART_HandleTypeDef *husart);
// static uint8_t usart1_tx_buffer[USART1_TX_BUFFER_SIZE] = {0};
const usart_ctx_t *usart1_get_ctx_t() {
    return &u1_ctx;
}

static void usart1_init_cb(void){

    huart1.TxCpltCallback = hal_uart_dma_tc_callback;
    huart1.TxHalfCpltCallback = hal_uart_dma_ht_callback;
    /* NVIC */
    // HAL_NVIC_SetPriority(USART1_IRQn, 5, 0);
    // HAL_NVIC_EnableIRQ(USART1_IRQn);

    HAL_UART_Receive_DMA(&huart1, u1_ctx.rx.buffer, USART1_BUFFER_SIZE);
    __HAL_UART_ENABLE_IT(&huart1, UART_IT_IDLE);
}

static void usart1_dma_transfer_cb(const uint8_t *pData, uint16_t Size){
    HAL_UART_Transmit_DMA(&huart1, pData, Size);
}

void hal_uart_init(void) {
    // __HAL_RCC_USART1_CLK_ENABLE();

    u1_ctx.tx.buffer = tx_buffer;
    u1_ctx.tx.size = USART1_BUFFER_SIZE;

    u1_ctx.rx.size = USART1_BUFFER_SIZE;
    u1_ctx.rx.buffer = rx_buffer;

    usart1_init_cb();

}

static void hal_uart_dma_continue_transfer() {
    if (u1_ctx.is_rx_dma_busy)
        return;
    if (u1_ctx.tx.w_ptr == u1_ctx.tx.r_ptr && u1_ctx.tx.is_filled != 1)
        return;
    uint32_t transfer_n = u1_ctx.tx.w_ptr > u1_ctx.tx.r_ptr ? u1_ctx.tx.w_ptr - u1_ctx.tx.r_ptr
                                                            : USART1_BUFFER_SIZE - u1_ctx.tx.r_ptr;
    u1_ctx.tx.n_r_ptr = (u1_ctx.tx.r_ptr + transfer_n) % USART1_BUFFER_SIZE;
    usart1_dma_transfer_cb(&(u1_ctx.tx.buffer[u1_ctx.tx.r_ptr]), transfer_n);
    // HAL_UART_Transmit_DMA(&huart1, &(u1_ctx.tx.buffer[u1_ctx.tx.r_ptr]), transfer_n);
    u1_ctx.is_rx_dma_busy = 1;
}

void hal_uart_dma_tc_callback(UART_HandleTypeDef *huart) {
    if (huart->Instance != UART_INSTANCE) {
        return;
    }
    (void)huart;
    u1_ctx.tx.r_ptr = u1_ctx.tx.n_r_ptr;
    u1_ctx.tx.is_filled = 0;
    u1_ctx.is_rx_dma_busy = 0;
    hal_uart_dma_continue_transfer();
}

void hal_uart_dma_ht_callback(UART_HandleTypeDef *huart) {
    if (huart->Instance != UART_INSTANCE) {
        return;
    }
    (void)huart;
    // u1_ctx.tx.r_ptr = (u1_ctx.tx.n_r_ptr + u1_ctx.tx.r_ptr) >> 2;
}

void hal_uart_rx_idle_handler(void) {
    /* 更新头指针（注意缓冲区大小掩码，防止溢出） */
    uint16_t new_head = USART1_BUFFER_SIZE - __HAL_DMA_GET_COUNTER(huart1.hdmarx);
    if (u1_ctx.rx.w_ptr != u1_ctx.tx.r_ptr && new_head == u1_ctx.rx.r_ptr) {
        u1_ctx.rx.is_filled = 1;
    }
    u1_ctx.rx.w_ptr = new_head;
}

uint8_t hal_uart_is_receive() {
    return (u1_ctx.rx.r_ptr != u1_ctx.rx.w_ptr || u1_ctx.rx.is_filled == 1);
}

uint16_t hal_uart_receive_bytes(uint8_t *bytes, uint16_t len) {
    if (bytes == NULL || len == 0) {
        return 0;
    }
    if (u1_ctx.rx.w_ptr == u1_ctx.rx.r_ptr && u1_ctx.rx.is_filled == 0) {
        return 0;
    }
    uint16_t rev_l = 0;
    uint8_t is_w_r = u1_ctx.rx.w_ptr > u1_ctx.rx.r_ptr;
    if (is_w_r) {
        rev_l = u1_ctx.rx.w_ptr - u1_ctx.rx.r_ptr;
        rev_l = rev_l > len ? len : rev_l;
        memcpy(bytes, &u1_ctx.rx.buffer[u1_ctx.rx.r_ptr], rev_l);
        u1_ctx.rx.r_ptr = (u1_ctx.rx.r_ptr + rev_l) % USART1_BUFFER_SIZE;
    } else {
        rev_l = USART1_BUFFER_SIZE - u1_ctx.rx.r_ptr;
        rev_l = rev_l > len ? len : rev_l;
        memcpy(bytes, &u1_ctx.rx.buffer[u1_ctx.rx.r_ptr], rev_l);
        u1_ctx.rx.r_ptr = (u1_ctx.rx.r_ptr + rev_l) % USART1_BUFFER_SIZE;
        uint16_t n_w = u1_ctx.rx.w_ptr > len - rev_l ? len - rev_l : u1_ctx.rx.w_ptr;
        if (n_w) {
            memcpy(&bytes[rev_l], &u1_ctx.rx.buffer[u1_ctx.rx.r_ptr], n_w);
            u1_ctx.rx.r_ptr = (u1_ctx.rx.r_ptr + n_w) % USART1_BUFFER_SIZE;
            rev_l += n_w;
        }
    }
    u1_ctx.rx.is_filled = 0;
    return rev_l;
}

uint16_t hal_uart_get_rx_available_size() {
    if (u1_ctx.rx.is_filled)
        return USART1_BUFFER_SIZE;
    return USART1_BUFFER_SIZE - USART1_GET_BUFFER_VALID_SIZE(u1_ctx.rx);
}

void hal_uart_sendbyte(uint8_t byte) {
    while (!__HAL_UART_GET_FLAG(&huart1, UART_FLAG_TXE));
    USART1->TDR = byte;
    // HAL_USART_Transmit(&husart1, &byte, 1, 1);
}

void hal_uart_dma_send_bytes(uint8_t *bytes, uint16_t len) {
    if (bytes == NULL || len == 0) {
        return;
    }
    // u1_ctx.tx.buffer[u1_ctx.tx.head],bytes, len
    if (USART1_GET_BUFFER_VALID_SIZE(u1_ctx.tx) < len || u1_ctx.tx.is_filled == 1) {
#ifdef USART1_TRACE
        u1_ctx.tx_dumpy_count++;
#endif
        return;
    }
#ifdef USART1_TRACE
    u1_ctx.tx_send_count++;
#endif
    if (u1_ctx.tx.w_ptr + len <= USART1_BUFFER_SIZE) {
        memcpy(&u1_ctx.tx.buffer[u1_ctx.tx.w_ptr], bytes, len);
        u1_ctx.tx.w_ptr = (len + u1_ctx.tx.w_ptr) % USART1_BUFFER_SIZE;
    } else {
        uint16_t copy_size = USART1_BUFFER_SIZE - u1_ctx.tx.w_ptr;
        memcpy(&u1_ctx.tx.buffer[u1_ctx.tx.w_ptr], bytes, copy_size);
        u1_ctx.tx.w_ptr = (len + u1_ctx.tx.w_ptr) % USART1_BUFFER_SIZE;
        memcpy(&u1_ctx.tx.buffer[0], &bytes[copy_size], u1_ctx.tx.w_ptr);
    }
    u1_ctx.tx.is_filled = u1_ctx.tx.w_ptr == u1_ctx.tx.r_ptr;
    hal_uart_dma_continue_transfer();
}
void hal_uart_sendbytes(uint8_t *bytes, uint32_t len) {
    if (len == 0) {
        return;
    }
    HAL_UART_Transmit(&huart1, (const uint8_t *)bytes, len, USART1_TIMEOUT);
    // for (uint32_t i = 0; i < len; i++) {
    //     while (!__HAL_USART_GET_FLAG(&husart1, USART_FLAG_TXE));
    //     USART1->TDR = bytes[i];
    // }
}

void hal_uart_sendstring(const char *str) {
    if (!str)
        return;
    // while (*str) {
    // HAL_UART_Transmit_DMA(&huart1, (const uint8_t *)str, strlen(str));
    HAL_UART_Transmit(&huart1, (const uint8_t *)str, strlen(str), USART1_TIMEOUT);
    // while (!__HAL_USART_GET_FLAG(&husart1, USART_FLAG_TXE));
    // USART1->TDR = *str++;
    // }
}
int __io_putchar(int ch, FILE *f) {
    // if ((uint8_t)ch == '\n') {
    //     usart1_sendbyte('\r');
    // }
    hal_uart_sendbyte((uint8_t)ch);
    return ch;
}
int _write(int file, char *ptr, int len) {
    (void)file;
    int DataIdx;

    hal_uart_dma_send_bytes((uint8_t *)ptr, len);
    return len;
}
#endif