/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    tim.c
  * @brief   This file provides code for the configuration
  *          of the TIM instances.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2026 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "tim.h"

/* USER CODE BEGIN 0 */
static uint32_t tim2_clk_mhz = 0;
/* USER CODE END 0 */

TIM_HandleTypeDef htim2;

/* TIM2 init function */
void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 0;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 4294967295;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */
    uint32_t apb1_presc =HAL_RCC_GetSysClockFreq() / HAL_RCC_GetPCLK1Freq();
    if (apb1_presc == 0) // APB1 预分频器=1（不分频）
    {
        tim2_clk_mhz = HAL_RCC_GetPCLK1Freq() / 1000000U;
    }
    else // APB1 预分频器>1，TIM2 时钟=PCLK1×2
    {
        tim2_clk_mhz = (HAL_RCC_GetPCLK1Freq() * 2) / 1000000U;
    }
    // tim2_clk_mhz = HAL_RCC_GetPCLK1Freq() *2 / 1000000U;
    HAL_TIM_Base_Start(&htim2);
  /* USER CODE END TIM2_Init 2 */

}

void HAL_TIM_Base_MspInit(TIM_HandleTypeDef* tim_baseHandle)
{

  if(tim_baseHandle->Instance==TIM2)
  {
  /* USER CODE BEGIN TIM2_MspInit 0 */

  /* USER CODE END TIM2_MspInit 0 */
    /* TIM2 clock enable */
    __HAL_RCC_TIM2_CLK_ENABLE();
  /* USER CODE BEGIN TIM2_MspInit 1 */

  /* USER CODE END TIM2_MspInit 1 */
  }
}

void HAL_TIM_Base_MspDeInit(TIM_HandleTypeDef* tim_baseHandle)
{

  if(tim_baseHandle->Instance==TIM2)
  {
  /* USER CODE BEGIN TIM2_MspDeInit 0 */

  /* USER CODE END TIM2_MspDeInit 0 */
    /* Peripheral clock disable */
    __HAL_RCC_TIM2_CLK_DISABLE();
  /* USER CODE BEGIN TIM2_MspDeInit 1 */

  /* USER CODE END TIM2_MspDeInit 1 */
  }
}

/* USER CODE BEGIN 1 */

void delay_us(uint32_t us)
{
    if (us == 0) {
        return;
    }
    static uint32_t fix_ns = 300;
    uint32_t total_ns = us * 1000U;
    uint32_t target_ns = total_ns > fix_ns ? total_ns - fix_ns : 0;
    uint32_t target_cycles = target_ns * tim2_clk_mhz / 1000U;
    if (target_cycles == 0) {
        __asm__ volatile("nop");
        return;
    }

    uint32_t start_ticks = __HAL_TIM_GET_COUNTER(&htim2);
    // uint32_t target_tick = __HAL_TIM_GET_COUNTER(&htim2) + ticks;
    while (__HAL_TIM_GET_COUNTER(&htim2) - start_ticks < target_cycles) {
        __asm__ volatile("");
    };
}
/* USER CODE END 1 */
