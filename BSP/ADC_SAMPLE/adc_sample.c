//
// Created by yui on 2026/3/28.
//

#include "adc_sample.h"
#include "dwt_count.h"

static inline uint32_t get_tick_us() {
    return dwt_tick_us();
}


uint32_t adc_hal_sample_value(ADC_HandleTypeDef *hadc, uint32_t channel) {
    HAL_ADC_Start(hadc);
    while (HAL_OK != HAL_ADC_PollForConversion(hadc, ADC_TIMEOUT_MS)) {
    }
    return  HAL_ADC_GetValue(hadc);
}
uint32_t adc_sample_temperature() {
    if (!(ADC_TEMP_INSTANCE->CR & ADC_CR_ADEN)) {
        ADC_TEMP_INSTANCE->CR |= ADC_CR_ADEN;
        while (!(ADC_TEMP_INSTANCE->ISR & ADC_ISR_ADRDY)); // 等待ADC就绪
    }
    ADC_TEMP_INSTANCE->ISR = ADC_ISR_EOC;
    ADC_TEMP_INSTANCE->CR |= ADC_CR_ADSTART;
    while (!(ADC_TEMP_INSTANCE->ISR & ADC_ISR_EOC));
    return ADC_TEMP_INSTANCE->DR;
}

float adc_calculate_temperature(uint32_t adc_value) {
    // 读取工厂校准值
    uint16_t cal1 = *TEMPSENSOR_CAL1_ADDR; // 30°C时的ADC值
    uint16_t cal2 = *TEMPSENSOR_CAL2_ADDR; // 110°C时的ADC值

    // 线性插值计算温度
    float temperature =
            (float) (TEMPSENSOR_CAL2_TEMP - TEMPSENSOR_CAL1_TEMP) * (float) (adc_value - cal1) / (float) (cal2 - cal1) +
            TEMPSENSOR_CAL1_TEMP;

    return temperature;
}