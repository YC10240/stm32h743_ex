#ifndef USER_MAIN_H
#define USER_MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

#include "stdint.h"
#define MUSIC_DIR "0:/music/"
#define PATH_LEN 50
#define PATH_BUFFER_SIZE 50
#define USE_OS
#ifdef USE_OS
#define WHILE_LOOP                                                                                                     \
    do {                                                                                                               \
        vTaskSuspend(NULL);                                                                                            \
    } while (0)
#else
#define WHILE_LOOP                                                                                                     \
    do {                                                                                                               \
        while (1)                                                                                                      \
            ;                                                                                                          \
    } while (0)
#endif
#define MUTEX_TIMEOUT_MS 50

#define MUTEX_LOCK(__mutex)                                                                                            \
    do {                                                                                                               \
        BaseType_t take_ret = pdFALSE;                                                                                 \
        if (__mutex != NULL) {                                                                                         \
            take_ret = xSemaphoreTake(__mutex, pdMS_TO_TICKS(MUTEX_TIMEOUT_MS));                                       \
        } else {                                                                                                       \
            elog_e(tag, "lv mutex is Null when [lock]");                                                               \
            WHILE_LOOP;                                                                                                \
        }                                                                                                              \
        if (take_ret != pdPASS) {                                                                                      \
            elog_e(tag, "lv mutex take failed! timeout: %d ms, fun %s", MUTEX_TIMEOUT_MS, __func__);                   \
            elog_e(tag, "free heap size: %u bytes", xPortGetFreeHeapSize());                                           \
            WHILE_LOOP;                                                                                                \
        }                                                                                                              \
    } while (0)

#define MUTEX_UNLOCK(__mutex)                                                                                          \
    do {                                                                                                               \
        if (__mutex != NULL) {                                                                                         \
            BaseType_t give_ret = xSemaphoreGive(__mutex);                                                             \
            if (give_ret != pdPASS) {                                                                                  \
                elog_e(tag, "lv mutex unlock failed! fun: %s", __func__);                                              \
            }                                                                                                          \
        } else {                                                                                                       \
            elog_e(tag, "lv mutex is Null when [unlock]");                                                             \
        }                                                                                                              \
    } while (0)

typedef struct {
    char path[PATH_BUFFER_SIZE][PATH_LEN];
    uint16_t len;
} file_ctx_t;

// void lv_log_print(lv_log_level_t level, const char *txt);
void sd_music_scan();
void lvgl_task(void *parameter);
void mpu_task(void *parameter);
void key_scan_task(void *parameter);
void key_detect_task(void *parameter);
void user_main(void *pv);
void ds18b20_task(void *parameter);
#ifdef __cplusplus
}
#endif

#endif /* USER_MAIN_H */
