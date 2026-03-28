//
// Created by yui on 2026/3/28.
//

#ifndef ADC_SAMPLE_H
#define ADC_SAMPLE_H
#include "adc.h"
// 校准值存储地址（STM32H7系列）
#define TEMPSENSOR_CAL1_ADDR    ((uint16_t*)0x1FF1E820UL)  // 30°C时的ADC值
#define TEMPSENSOR_CAL2_ADDR    ((uint16_t*)0x1FF1E840UL)  // 110°C时的ADC值
#define TEMPSENSOR_CAL1_TEMP    (30L)
#define TEMPSENSOR_CAL2_TEMP    (110L)
#define TEMPSENSOR_CAL_VREFANALOG (3300UL)  // 校准时的参考电压3.3V

#define ADC_TEMP_INSTANCE ADC3
#define ADC_TEMP_CHANNEL 3

#define ADC_TIMEOUT_MS 100
#define ADC_TIMEOUT_US 100

uint32_t adc_hal_sample_value(ADC_HandleTypeDef *hadc, uint32_t channel);
uint32_t adc_sample_temperature();

float adc_calculate_temperature(uint32_t adc_value);
#endif //ADC_SAMPLE_H
