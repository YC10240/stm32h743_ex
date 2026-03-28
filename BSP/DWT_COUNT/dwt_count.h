/*
 * dwt_count.h
 *
 *  Created on: 2026年2月8日
 *      Author: yui
 */

#ifndef SRC_DWT_COUNT_H_
#define SRC_DWT_COUNT_H_

#include "stdint.h"

#include "stm32h7xx.h"
#include "core_cm7.h"
#if !defined(DWT)
#ifdef __cplusplus
#define __I volatile /*!< Defines 'read only' permissions */
#else
#define __I volatile const /*!< Defines 'read only' permissions */
#endif
#define __O   volatile       /*!< Defines 'write only' permissions */
#define __IO  volatile       /*!< Defines 'read / write' permissions */
#define __IM  volatile const /*! Defines 'read only' structure member permissions */
#define __OM  volatile       /*! Defines 'write only' structure member permissions */
#define __IOM volatile       /*! Defines 'read / write' structure member permissions */

typedef struct {
    __IOM uint32_t CTRL;      /*!< Offset: 0x000 (R/W)  Control Register */
    __IOM uint32_t CYCCNT;    /*!< Offset: 0x004 (R/W)  Cycle Count Register */
    __IOM uint32_t CPICNT;    /*!< Offset: 0x008 (R/W)  CPI Count Register */
    __IOM uint32_t EXCCNT;    /*!< Offset: 0x00C (R/W)  Exception Overhead Count Register */
    __IOM uint32_t SLEEPCNT;  /*!< Offset: 0x010 (R/W)  Sleep Count Register */
    __IOM uint32_t LSUCNT;    /*!< Offset: 0x014 (R/W)  LSU Count Register */
    __IOM uint32_t FOLDCNT;   /*!< Offset: 0x018 (R/W)  Folded-instruction Count Register */
    __IM uint32_t PCSR;       /*!< Offset: 0x01C (R/ )  Program Counter Sample Register */
    __IOM uint32_t COMP0;     /*!< Offset: 0x020 (R/W)  Comparator Register 0 */
    __IOM uint32_t MASK0;     /*!< Offset: 0x024 (R/W)  Mask Register 0 */
    __IOM uint32_t FUNCTION0; /*!< Offset: 0x028 (R/W)  Function Register 0 */
    uint32_t RESERVED0[1U];
    __IOM uint32_t COMP1;     /*!< Offset: 0x030 (R/W)  Comparator Register 1 */
    __IOM uint32_t MASK1;     /*!< Offset: 0x034 (R/W)  Mask Register 1 */
    __IOM uint32_t FUNCTION1; /*!< Offset: 0x038 (R/W)  Function Register 1 */
    uint32_t RESERVED1[1U];
    __IOM uint32_t COMP2;     /*!< Offset: 0x040 (R/W)  Comparator Register 2 */
    __IOM uint32_t MASK2;     /*!< Offset: 0x044 (R/W)  Mask Register 2 */
    __IOM uint32_t FUNCTION2; /*!< Offset: 0x048 (R/W)  Function Register 2 */
    uint32_t RESERVED2[1U];
    __IOM uint32_t COMP3;     /*!< Offset: 0x050 (R/W)  Comparator Register 3 */
    __IOM uint32_t MASK3;     /*!< Offset: 0x054 (R/W)  Mask Register 3 */
    __IOM uint32_t FUNCTION3; /*!< Offset: 0x058 (R/W)  Function Register 3 */
    uint32_t RESERVED3[981U];
    __OM uint32_t LAR; /*!< Offset: 0xFB0 (  W)  Lock Access Register */
    __IM uint32_t LSR; /*!< Offset: 0xFB4 (R  )  Lock Status Register */
} DWT_Type;
typedef struct {
    __IOM uint32_t DHCSR; /*!< Offset: 0x000 (R/W)  Debug Halting Control and Status Register */
    __OM uint32_t DCRSR;  /*!< Offset: 0x004 ( /W)  Debug Core Register Selector Register */
    __IOM uint32_t DCRDR; /*!< Offset: 0x008 (R/W)  Debug Core Register Data Register */
    __IOM uint32_t DEMCR; /*!< Offset: 0x00C (R/W)  Debug Exception and Monitor Control Register */
} CoreDebug_Type;
#define DWT_BASE       (0xE0001000UL) /*!< DWT Base Address */
#define CoreDebug_BASE (0xE000EDF0UL) /*!< Core Debug Base Address */

#define DWT       ((DWT_Type *)DWT_BASE)             /*!< DWT configuration struct */
#define CoreDebug ((CoreDebug_Type *)CoreDebug_BASE) /*!< Core Debug configuration struct */

#define CoreDebug_DEMCR_TRCENA_Pos 24U /*!< CoreDebug DEMCR: TRCENA Position */
#define CoreDebug_DEMCR_TRCENA_Msk                                                                 \
    (1UL << CoreDebug_DEMCR_TRCENA_Pos) /*!< CoreDebug DEMCR: TRCENA Mask */

#define DWT_CTRL_CYCCNTENA_Pos 0U /*!< DWT CTRL: CYCCNTENA Position */
#define DWT_CTRL_CYCCNTENA_Msk                                                                     \
    (0x1UL /*<< DWT_CTRL_CYCCNTENA_Pos*/) /*!< DWT CTRL: CYCCNTENA Mask */

#endif

extern uint32_t SystemCoreClock;
#define DWT_CONVERT_CYCLE_TO_NS(cycle) (cycle/(SystemCoreClock/1000000000.0f))

#define dwt_tick_cnt() (DWT->CYCCNT)
#define dwt_tick_us() (DWT->CYCCNT/(SystemCoreClock/1000000.0f))
#define dwt_tick_ms() (DWT->CYCCNT/(SystemCoreClock/1000.0f))

void null_function();
void dwt_delay_init(void);
void dwt_delay_us(uint32_t us);
void dwt_delay_ms(uint32_t ms);

// uint32_t dwt_tick_cnt(void);
// uint32_t dwt_tick_us(void);

// uint32_t dwt_tick_ms(void);
uint32_t os_tick_ms(void);
uint32_t get_tick_ms(void);

void tick_ms_handler(void);
#endif /* SRC_DWT_COUNT_H_ */
