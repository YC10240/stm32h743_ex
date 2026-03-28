
#include "dwt_count.h"
// #include "Clock_Ip.h"
// #include "Clock_Ip_Types.h"
// #include "lvgl.h"
#if 1
#include "FreeRTOS.h"
#include "task.h"
#endif
extern uint32_t SystemCoreClock;
static uint32_t System_Core_Clock;
static uint32_t dwt_div_us = 0;
static uint32_t dwt_div_ms = 0;
static uint32_t core_clock_mhz = 0;
volatile static uint32_t g_tick_ms = 0;

void null_function() {}
// SysTick 中断处理函数
void tick_ms_handler(void) {
    // lv_tick_inc(1);
    g_tick_ms++;
}
// ================================================================
// 初始化 DWT
void dwt_delay_init(void) {
    System_Core_Clock = SystemCoreClock;
    CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
    DWT->LAR = 0xC5ACCE55;
    DWT->CYCCNT = 0;
    DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;
    // dwt_div_us = System_Core_Clock / 1000000U;
    // dwt_div_ms = System_Core_Clock / 1000U;
    core_clock_mhz = System_Core_Clock / 1000000U;
}

// 高精度微秒延时
void dwt_delay_us(uint32_t us) {
    // 1. 处理 0 延迟：直接返回，避免无效计算
    if (us == 0) {
        return;
    }
    static const uint32_t fixed_overhead_ns = 250U;

    // 2. 计算需要的总周期数，并扣除函数固定开销
    uint32_t total_ns = us * 1000U;
    // 确保扣除后不会为负数
    uint32_t target_ns = (total_ns > fixed_overhead_ns) ? (total_ns - fixed_overhead_ns) : 0;
    uint32_t target_cycles = target_ns * core_clock_mhz / 1000U;

    // 3. 若目标周期为 0，说明开销已覆盖，直接返回
    if (target_cycles == 0) {
        __asm__ volatile("nop"); // 空操作，避免编译器优化
        return;
    }

    // 4. 核心延迟逻辑：单次等待，减少循环开销
    uint32_t start = DWT->CYCCNT;
    // 处理 CYCCNT 溢出（Cortex-M 的 CYCCNT 是 32 位，溢出后从 0 开始）
    while ((DWT->CYCCNT - start) < target_cycles) {
        __asm__ volatile(""); // 防止编译器优化掉空循环
    }
}

void dwt_delay_ms(uint32_t ms) {
    if (ms == 0)
        return;
    // 最大安全块：避免 cycles 溢出
    const uint32_t MAX_BLOCK_MS = 2000; // < 25536，留余量
    while (ms > 0) {
        uint32_t block = (ms > MAX_BLOCK_MS) ? MAX_BLOCK_MS : ms;
        uint32_t start = DWT->CYCCNT;
        uint32_t cycles = block * (System_Core_Clock / 1000U);
        while ((DWT->CYCCNT - start) < cycles) {
            __asm__ volatile("");
        }
        if (ms >= block) {
            ms -= block;
        } else {
            break;
        }
    }
}


// inline uint32_t dwt_tick_us() {
//     return (DWT->CYCCNT  ) / dwt_div_us;
// }

// uint32_t dwt_tick_ms() {
//     return (DWT->CYCCNT  ) / dwt_div_ms;
// }
uint32_t os_tick_ms(){
    // return 0;
	return (uint32_t)(xTaskGetTickCount() * configTICK_RATE_HZ / 1000);
}

uint32_t get_tick_ms(){
	return HAL_GetTick();
}

