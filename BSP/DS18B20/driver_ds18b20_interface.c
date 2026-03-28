/**
 * Copyright (c) 2015 - present LibDriver All rights reserved
 * 
 * The MIT License (MIT)
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE. 
 *
 * @file      driver_ds18b20_interface_template.c
 * @brief     driver ds18b20 interface template source file
 * @version   2.0.0
 * @author    Shifeng Li
 * @date      2021-04-06
 *
 * <h3>history</h3>
 * <table>
 * <tr><th>Date        <th>Version  <th>Author      <th>Description
 * <tr><td>2021/04/06  <td>2.0      <td>Shifeng Li  <td>format the code
 * <tr><td>2020/12/20  <td>1.0      <td>Shifeng Li  <td>first upload
 * </table>
 */
  
#include "driver_ds18b20_interface.h"
#include "elog.h"
#include "dwt_count.h"
#include <stdarg.h>
#include "tim.h"
#include "gpio.h"
#include "FreeRTOS.h"
#include "task.h"
static const char *tag = "ds18b20";
/**
 * @brief  interface bus init
 * @return status code
 *         - 0 success
 *         - 1 bus init failed
 * @note   none
 */
uint8_t ds18b20_interface_init(void)
{
    return 0;
}

/**
 * @brief  interface bus deinit
 * @return status code
 *         - 0 success
 *         - 1 bus deinit failed
 * @note   none
 */
uint8_t ds18b20_interface_deinit(void)
{
    return 0;
}

/**
 * @brief      interface bus read
 * @param[out] *value pointer to a value buffer
 * @return     status code
 *             - 0 success
 *             - 1 read failed
 * @note       none
 */
uint8_t ds18b20_interface_read(uint8_t *value)
{
    *value = HAL_GPIO_ReadPin(DS18B20_BUS_GPIO_Port, DS18B20_BUS_Pin);
    return 0;
}

/**
 * @brief     interface bus write
 * @param[in] value written value
 * @return    status code
 *            - 0 success
 *            - 1 write failed
 * @note      none
 */
uint8_t ds18b20_interface_write(uint8_t value)
{
    HAL_GPIO_WritePin(DS18B20_BUS_GPIO_Port, DS18B20_BUS_Pin, value);
    return 0;
}

/**
 * @brief     interface delay ms
 * @param[in] ms time
 * @note      none
 */
void ds18b20_interface_delay_ms(uint32_t ms)
{
    // dwt_delay_ms(ms);
    vTaskDelay(pdMS_TO_TICKS(ms));
}

/**
 * @brief     interface delay us
 * @param[in] us time
 * @note      none
 */
void ds18b20_interface_delay_us(uint32_t us)
{
   // dwt_delay_us(us);
    delay_us(us);
}

/**
 * @brief interface enable the interrupt
 * @note  none
 */
void ds18b20_interface_enable_irq(void)
{
    
}

/**
 * @brief interface disable the interrupt
 * @note  none
 */
void ds18b20_interface_disable_irq(void)
{
    
}

/**
 * @brief     interface print format data
 * @param[in] fmt format data
 * @note      none
 */
void ds18b20_interface_debug_print(const char *const fmt, ...)
{
    // va_list args;
    // // 2. 初始化参数列表（指向 fmt 后的第一个可变参数）
    // va_start(args, fmt);
    // // 3. 调用 elog 的可变参数版本（elog_va_i），避免直接传 ##__VA_ARGS__ 的兼容性问题
    // // printf(fmt, args);
    // elog_i(tag, fmt, args);
    // // 4. 释放参数列表
    // va_end(args);
}
