/*
 * This file is part of the EasyLogger Library.
 *
 * Copyright (c) 2015, Armink, <armink.ztl@gmail.com>
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * 'Software'), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * Function: Portable interface for each platform.
 * Created on: 2015-04-28
 */

#include <elog.h>
#include <hal_uart.h>


#include "FreeRTOS.h"
#include "dwt_count.h"
#include "semphr.h"
#include "stdio.h"
#include "string.h"
#include "task.h"
/**
 * EasyLogger port initialize
 *
 * @return result
 */
static SemaphoreHandle_t elog_mutex = NULL;
ElogErrCode elog_port_init(void) {
    ElogErrCode result = ELOG_NO_ERR;
    elog_mutex = xSemaphoreCreateMutex();
    // usart1_init();
    /* add your code here */

    return result;
}

/**
 * EasyLogger port deinitialize
 *
 */
void elog_port_deinit(void) {

    /* add your code here */
}

/**
 * output log port interface
 *
 * @param log output of log
 * @param size log size
 */
void elog_port_output(const char *log, size_t size) {

    /* add your code here */
    // 串口输出重定向
    // usart1_sendbytes((uint8_t *)log, size);
    hal_uart_dma_send_bytes((uint8_t *)log, size);
    // XLOG_ELOG_PORT(log,size);
}

/**
 * output lock
 */
void elog_port_output_lock(void) {
    /* add your code here */
    if (elog_mutex != NULL) {
        xSemaphoreTake(elog_mutex, portMAX_DELAY);
    }
}

/**
 * output unlock
 */
void elog_port_output_unlock(void) {

    /* add your code here */
    if (elog_mutex != NULL) {
        xSemaphoreGive(elog_mutex);
    }
}

/**
 * get current time interface
 *
 * @return current time
 */
const char *elog_port_get_time(void) {
    static char buf[ELOG_TIME_BUFFER_LEN] = {0};
    // memset(buf, 0x00, ELOG_TIME_BUFFER_LEN);
    /* add your code here */
    snprintf(buf, ELOG_TIME_BUFFER_LEN, "%lu", get_tick_ms());
    return buf;
}

/**
 * get current process name interface
 *
 * @return current process name
 */
const char *elog_port_get_p_info(void) {

    /* add your code here */
    return "";
}

/**
 * get current thread name interface
 *
 * @return current thread name
 */
const char *elog_port_get_t_info(void) {

    /* add your code here */
    return "";
}