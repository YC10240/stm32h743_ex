#ifndef HAL_UART_H
#define HAL_UART_H

#ifdef __cplusplus
extern "C" {
#endif
#include "stdint.h"
#define ENABLE_USART_ 1

#define USART1_BAUDRATE    115200
#define USART1_BUFFER_SIZE 1024
#define USART1_TIMEOUT     (1000000U)
#define USART1_TRACE

#define USART1_GET_BUFFER_VALID_SIZE(queue)                                                        \
    ((queue.w_ptr >= queue.r_ptr) ? (USART1_BUFFER_SIZE - queue.w_ptr + queue.r_ptr)               \
                                  : (queue.r_ptr - queue.w_ptr))
typedef struct {
    // uint8_t buffer[USART1_BUFFER_SIZE];
    uint8_t *buffer;
    uint16_t size;
    volatile uint16_t w_ptr;
    volatile uint16_t r_ptr;
    volatile uint16_t n_r_ptr;
    volatile uint8_t is_filled;
} CircularQueue_t;

typedef struct {
    CircularQueue_t rx;
    CircularQueue_t tx;
    volatile uint8_t is_rx_dma_busy;
#ifdef USART1_TRACE
    volatile uint32_t tx_dumpy_count;
    volatile uint32_t tx_send_count;
#endif
} usart_ctx_t;
const usart_ctx_t *usart1_get_ctx_t();
void hal_uart_init(void);
uint8_t hal_uart_is_receive();
uint16_t hal_uart_receive_bytes(uint8_t *bytes, uint16_t len);
uint16_t hal_uart_get_rx_available_size();
void hal_uart_sendbyte(uint8_t byte);
void hal_uart_dma_send_bytes(uint8_t *bytes, uint16_t len);
void hal_uart_sendbytes(uint8_t *bytes, uint32_t len);
void hal_uart_sendstring(const char *str);
#ifdef __cplusplus
}
#endif

#endif /* USART_H */