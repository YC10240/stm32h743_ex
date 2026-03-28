#include "user_main.h"
#include <string.h>
#include "dwt_count.h"
#include "hal_uart.h"
#include "main.h"
#include "stdio.h"
#include "usart.h"
#include "user_key.h"
// #include "ssd1306.h"
// #include "mpu6050.h"
// #include "st7735s.h"
#include <adc.h>
#include <adc_sample.h>
#include <driver_ds18b20.h>
#include <driver_ds18b20_interface.h>
#include <elog.h>

#include "FreeRTOS.h"
#include "tim.h"

#include <queue.h>
#include <semphr.h>
#include <task.h>
#include <timers.h>
// #include "elog.h"
// #include "coremark.h"

#define LED_PORT GPIOC

#define LED_RED_ON() HAL_GPIO_WritePin(LED_PORT, LED_RED_Pin, 0)
#define LED_GREEN_ON() HAL_GPIO_WritePin(LED_PORT, LED_GREEN_Pin, 0)
#define LED_BLUE_ON() HAL_GPIO_WritePin(LED_PORT, LED_BLUE_Pin, 0)

#define LED_RED_OFF() HAL_GPIO_WritePin(LED_PORT, LED_RED_Pin, 1)
#define LED_GREEN_OFF() HAL_GPIO_WritePin(LED_PORT, LED_GREEN_Pin, 1)
#define LED_BLUE_OFF() HAL_GPIO_WritePin(LED_PORT, LED_BLUE_Pin, 1)

#define LED_RED_TOOGLE() HAL_GPIO_TogglePin(LED_PORT, LED_RED_Pin)
#define LED_GREEN_TOOGLE() HAL_GPIO_TogglePin(LED_PORT, LED_GREEN_Pin)
#define LED_BLUE_TOOGLE() HAL_GPIO_TogglePin(LED_PORT, LED_BLUE_Pin)

__attribute__((section(".ram_buf"), used)) uint8_t ucHeap[configTOTAL_HEAP_SIZE];
// uint8_t ucHeap[configTOTAL_HEAP_SIZE];
// #include "lvgl.h"
// #include "lv_port_disp.h"
// #include "lvgl_test.h"
// #include "lv_examples.h"
// #include "anim/lv_example_anim.h"
// #include "lv_demos.h"
static char tag[] = "user_main";
static file_ctx_t music_ctx = {0};
// LV_FONT_DECLARE(JetMono_16);
typedef struct {
    TaskFunction_t pxTaskCode;
    const char pcName[configMAX_TASK_NAME_LEN];
    const configSTACK_DEPTH_TYPE uxStackDepth;
    void *const pvParameters;
    UBaseType_t uxPriority;
    TaskHandle_t pxCreatedTask;
} task_t;

static task_t user_task[] = {
        // {lvgl_task, "lvgl task", 2 * 1024, NULL, 2, NULL},
        // {mpu_task, "mpu task", 1024, NULL, 2, NULL},
        {key_scan_task, "key scan", configMINIMAL_STACK_SIZE, NULL, 1, NULL},
        {key_detect_task, "key detect", 256, NULL, 1, NULL},
        {ds18b20_task, "ds18b20 task", 1024, NULL, 1, NULL},
};
static volatile SemaphoreHandle_t lv_mutex = NULL;
// static lv_obj_t *mpu_label = NULL;

// static lv_ctx_t lv_ctx = {0};
// void lv_log_print(lv_log_level_t level, const char *txt) {
//     switch (level) {
//     case LV_LOG_LEVEL_TRACE: elog_d(tag, txt); break;
//     case LV_LOG_LEVEL_INFO:  elog_i(tag, txt); break;
//     case LV_LOG_LEVEL_WARN:  elog_w(tag, txt); break;
//     case LV_LOG_LEVEL_ERROR: elog_e(tag, txt); break;
//     case LV_LOG_LEVEL_USER:  elog_i(tag, txt); break;
//     case LV_LOG_LEVEL_NONE:
//     default:                 break;
//     }
// }

void user_main(void *pv) {
    elog_set_fmt(ELOG_LVL_TOTAL_NUM, ELOG_FMT_TAG | ELOG_FMT_LVL | ELOG_FMT_TIME);
    KeyInfo keys[] = {
            {GPIOC, GPIO_PIN_13, 0},
    };
    key_init(keys, sizeof(keys) / sizeof(KeyInfo));
    // oled_init();

    // sd_music_scan();
    lv_mutex = xSemaphoreCreateMutex();

    elog_i(tag, "stm32h743vit6, systemclock: %lu MHz", (long) (SystemCoreClock / 1000000));
    // oled_set_vnstring_buffer(0, 0, 1, 1, "clk: %u MHz", (SystemCoreClock / 1000000));
    // oled_flush();
    elog_i(tag, "FreeRTOS Project");

    uint8_t user_task_len = sizeof(user_task) / sizeof(task_t);
    for (uint8_t i = 0; i < user_task_len; i++) {
        task_t *cur = &user_task[i];
        BaseType_t ret = xTaskCreate(cur->pxTaskCode, cur->pcName, cur->uxStackDepth, cur->pvParameters,
                                     cur->uxPriority, &cur->pxCreatedTask);
        if (ret == pdPASS) {
            elog_i(tag, "\"%s\" create success", cur->pcName);
        } else {
            elog_w(tag, "\"%s\" create failed", cur->pcName);
            elog_w(tag, "\"%s\" need stack size [%u] bytes", cur->pcName, cur->uxStackDepth);
            elog_w(tag, "rtos free head size [%u] bytes", xPortGetFreeHeapSize());
            elog_w(tag, "rtos total head size [%u] bytes", configTOTAL_HEAP_SIZE);
        }
    }

    const usart_ctx_t *u1_ctx = usart1_get_ctx_t();
    uint8_t buff[128] = {0};
    uint32_t count = 0;
    while (1) {


        // count++;
        // if (count % 5000 != 0) {
        //     elog_i(tag, "press test send count: %u", count);
        //     vTaskDelay(pdMS_TO_TICKS(1));
        //     continue;
        // }
        // vTaskDelay(pdMS_TO_TICKS(1000000));

        if (hal_uart_get_rx_available_size()) {
            uint8_t rev = hal_uart_receive_bytes(buff, 127);
            if (rev != 0) {
                buff[rev] = 0;
                elog_i(tag, "receive: %s", buff);
                elog_i(tag, "receive size: %u rx wptr:%u, rptr:%u, filled:%u", rev, u1_ctx->rx.w_ptr, u1_ctx->rx.r_ptr,
                       u1_ctx->rx.is_filled);
            }
        }
        vTaskDelay(pdMS_TO_TICKS(10));
    }
}

void lvgl_task(void *parameter) {
    while (1) {
        uint32_t till_time = dwt_tick_ms();
        // MUTEX_LOCK(lv_mutex);
        // lv_task_handler();
        // MUTEX_UNLOCK(lv_mutex);
        till_time = dwt_tick_ms() - till_time;
        // if (till_time)
        //     elog_i(tag, "lv task handler time: %u ms", till_time);
        // if (till_time < LV_DEF_REFR_PERIOD)
        // vTaskDelay(pdMS_TO_TICKS(LV_DEF_REFR_PERIOD - till_time));
    }
}

// void mpu_task(void *parameter) {
//     static char buffer[64] = {0};
//     const char fmt[] = "yaw: %.2f \npitch: %.2f \nroll: %.2f";
//     mpu_ctx_t *mpu_ctx = mpu_get_ctx();
//     uint8_t mpu_dt_ms = 20;
//     mpu_set_dt_ms(mpu_dt_ms);
//     LV_LOCK();
//     // lv_obj_t *mpu_label = lv_label_create(lv_scr_act());
//     // lv_obj_set_style_text_font(mpu_label, &JetMono_16, 0);
//     // lv_obj_set_style_text_color(mpu_label, lv_color_hex(0xffffff), 0);
//     // lv_label_set_long_mode(mpu_label, LV_LABEL_LONG_WRAP);
//     // lv_obj_set_pos(mpu_label, 0, 16);
//     // lv_label_set_text_static(mpu_label, buffer);
//     LV_UNLOCK();
//     while (1) {
//         mpu_update();
//         // mpu_update_quaterninon();
//         mpu_update_quaternion_mahony();
//         mpu_quaternion_to_euler();
//         LV_LOCK();
//         snprintf(buffer, sizeof(buffer), fmt, mpu_ctx->yaw, mpu_ctx->pitch, mpu_ctx->roll);
//         // lv_obj_invalidate(mpu_label);
//         LV_UNLOCK();
//         // elog_i(tag, "yaw: %.2f, pitch: %.2f, roll: %.2f", mpu_ctx->yaw, mpu_ctx->pitch,
//         //        mpu_ctx->roll);
//         vTaskDelay(pdMS_TO_TICKS(mpu_dt_ms));
//     }
// }

void key_scan_task(void *parameter) {
    while (1) {
        key_scan();
        vTaskDelay(pdMS_TO_TICKS(5));
    }
}

void key_detect_task(void *parameter) {
    while (1) {

        // HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_0);
        for (uint8_t i = 0; i < key_nums; i++) {
            if (key_get_event(i) == KE_SHORT_PRESSED) {
                key_reset_event(i);
                // LED_RED_TOOGLE();
                LED_BLUE_TOOGLE();
                // LED_GREEN_TOOGLE();
                // HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_0);
                uint32_t now_us = dwt_tick_us();
                elog_i(tag, "key %u short pressed", i);
                now_us = dwt_tick_us() - now_us;
                elog_i(tag, "elog time %u us", now_us);
            }
            if (key_get_event(i) == KE_LONG_PRESSED) {
                key_reset_event(i);
                elog_i(tag, "key %u long pressed", i);
            }
        }
        vTaskDelay(pdMS_TO_TICKS(20));
    }
}

void ds18b20_task(void *parameter) {
    uint8_t res;
    static ds18b20_handle_t gs_handle;
    /* link interface function */
    DRIVER_DS18B20_LINK_INIT(&gs_handle, ds18b20_handle_t);
    DRIVER_DS18B20_LINK_BUS_INIT(&gs_handle, ds18b20_interface_init);
    DRIVER_DS18B20_LINK_BUS_DEINIT(&gs_handle, ds18b20_interface_deinit);
    DRIVER_DS18B20_LINK_BUS_READ(&gs_handle, ds18b20_interface_read);
    DRIVER_DS18B20_LINK_BUS_WRITE(&gs_handle, ds18b20_interface_write);
    DRIVER_DS18B20_LINK_DELAY_MS(&gs_handle, ds18b20_interface_delay_ms);
    DRIVER_DS18B20_LINK_DELAY_US(&gs_handle, ds18b20_interface_delay_us);
    DRIVER_DS18B20_LINK_ENABLE_IRQ(&gs_handle, ds18b20_interface_enable_irq);
    DRIVER_DS18B20_LINK_DISABLE_IRQ(&gs_handle, ds18b20_interface_disable_irq);
    DRIVER_DS18B20_LINK_DEBUG_PRINT(&gs_handle, ds18b20_interface_debug_print);

    /* ds18b20 init */
    res = ds18b20_init(&gs_handle);
    if (res != 0) {
        ds18b20_interface_debug_print("ds18b20: init failed.");

        goto err_del;
    }

    /* set skip rom mode */
    res = ds18b20_set_mode(&gs_handle, DS18B20_MODE_SKIP_ROM);
    if (res != 0) {
        ds18b20_interface_debug_print("ds18b20: set mode failed.");
        (void) ds18b20_deinit(&gs_handle);

        goto err_del;
    }

    /* set default resolution */
    res = ds18b20_scratchpad_set_resolution(&gs_handle, DS18B20_RESOLUTION_12BIT);
    if (res != 0) {
        ds18b20_interface_debug_print("ds18b20: scratchpad set resolution failed.");
        (void) ds18b20_deinit(&gs_handle);
        goto err_del;
    }

    int16_t raw = 0;
    float temperature = 0.0f;
    for (;;) {

        /* read temperature */
        if (ds18b20_read(&gs_handle,  &raw, &temperature) != 0) {
            elog_i(tag, "ds18b20_read failed");
            vTaskDelay(pdMS_TO_TICKS(1000));
            continue;
        }
        uint32_t adc_value = adc_sample_temperature(); // 17 us
        float temp = adc_calculate_temperature(adc_value);
        elog_i(tag, "cpu temp: %.2f, env temp: %.4f",temp, temperature);
        vTaskDelay(pdMS_TO_TICKS(3000));
    }
err_del:
    elog_i(tag, "ds18b20_task err_del task delete");
    vTaskDelete(NULL);
}
void sd_music_scan() {
    // FATFS fs;
    // FIL file;
    // DIR dir;
    // FRESULT res;
    // FILINFO fno;
    // uint32_t now = dwt_tick_ms();
    // res = f_mount(&fs, "0", 1);
    // now = dwt_tick_ms() - now;
    // elog_i(tag, "music mount time %u ms", now);
    // if (res != FR_OK) {
    //     elog_i(tag, "f_mount failed: %u", res);
    //     return;
    // }
    // res = f_opendir(&dir, MUSIC_DIR);
    // if (res != FR_OK) {
    //     elog_i(tag, "f_opendir failed: %u", res);
    //     f_mount(NULL, "0:", 0);
    //     return;
    // }
    // for (;;) {
    //     res = f_readdir(&dir, &fno);
    //     if (res != FR_OK || fno.fname[0] == 0)
    //         break;
    //     if (fno.fname[0] == 0)
    //         continue;
    //     if (str_end_with(fno.fname, ".wav") || str_end_with(fno.fname, ".WAV")) {
    //         strcat(music_ctx.path[music_ctx.len], MUSIC_DIR);
    //         strcat(music_ctx.path[music_ctx.len++], fno.fname);
    //     }
    // }
    // f_closedir(&dir);
    //
    // if (res == FR_OK) {
    //     elog_i(tag, "------------------------");
    //     elog_i(tag, "scan music dir: %s", MUSIC_DIR);
    //     elog_i(tag, "music file len: %u", music_ctx.len);
    //     uint8_t buff[2048] = {0};
    //     UINT br = 0;
    //     for (uint16_t i = 0; i < music_ctx.len; i++) {
    //         elog_i(tag, "%s", music_ctx.path[i]);
    //         f_open(&file, music_ctx.path[i], FA_READ);
    //         now = DWT->CYCCNT;
    //         f_read(&file, buff, 2048, &br);
    //         now = DWT->CYCCNT - now;
    //         f_close(&file);
    //         now = now / (SystemCoreClock / 1000000.0);
    //         elog_i(tag, "music readdata time %u us", now);
    //         elog_i(tag, "music readdata time %u ms", now / 1000);
    //         elog_i(tag, "music read size %u bytes", br);
    //         elog_i(tag, "music read speed %u bytes /s", (uint32_t) ((br * 1000) / (float) (now / 1000.0)));
    //         elog_i(tag, "music read speed %u kB /s", (uint16_t) ((br * 1000 / 1024.0) / (float) (now / 1000.0)));
    //         for (uint16_t j = 0; j < (br >> 4); j++) {
    //             elog_raw("0x%05x ", j << 4);
    //             for (uint8_t k = 0; k < (0x01 << 4); k++) {
    //                 elog_raw("%02x ", buff[16 * j + k]);
    //             }
    //             break;
    //             // printf("| ");
    //             // for (uint8_t k = 0; k < (0x01 << 4); k++) {
    //             //     char ch = buff[16 * j + k];
    //             //     if (strchr(charset, ch) == NULL || ch == 0) {
    //             //         ch = '.';
    //             //     }
    //             //     printf("%c", ch);
    //             // }
    //             elog_raw(" |");
    //             elog_raw("\r\n");
    //         }
    //     }
    //     elog_i(tag, "------------------------");
    // } else {
    //     elog_e(tag, "Error during readdir: %d", res);
    // }
    //
    // f_mount(NULL, "0:", 0);
}
