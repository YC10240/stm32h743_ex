#ifndef BUTTON_H
#define BUTTON_H
#include "stm32h7xx.h"
#include <stdint.h>

#define DEBOUNCE_MS     20
#define LONG_PRESSED_MS 300
#define WAIT_DOUBLE_MS  0

#define KEY_GPIO_SPEED GPIO_Speed_10MHz
extern uint8_t key_nums;
// #define KEY_CONSUME void(*)(void*)

typedef enum {
    KS_IDLE,
    KS_DEBOUNCE,
    KS_PRESSED,
    KS_WAIT_DOUBLE
} KeyState;
typedef enum {
    KE_NONE = 0,
    KE_DOUBLE_CLICK,
    KE_LONG_PRESSED,
    KE_SHORT_PRESSED
} KeyEventType;
typedef enum {
    KEY_0 = 0,
    KEY_1,
    KEY_2,
    // KEY_3,
    // KEY_4,
    // KEY_5,
    // KEY_6,
    KEY_NUM
} KeyList, KeyIndex;
typedef struct {
    // KeyIndex index;
    GPIO_TypeDef *gpiox;
    uint16_t pin;
    uint8_t active_level;
} KeyInfo;
typedef struct {
    KeyInfo info;
    uint8_t click_count;

    uint32_t pressed_ms;
    uint32_t release_ms;

    uint8_t _long_trigger;

    KeyState state;
    KeyEventType event;
} KeyHandle;
typedef struct {
    KeyHandle phandle[KEY_NUM];
    uint8_t len;
    uint32_t (*get_now_ms)();
    uint32_t (*get_pin_level)(GPIO_TypeDef *, uint32_t);
    void (*pin_init_cb)(const KeyHandle *);
} key_ctx_t;
void key_init(KeyInfo* keys, uint8_t len);
void key_creat(KeyInfo *handle, uint8_t len);
// void key_creat_mask(GPIO_TypeDef *gpiox, uint16_t pin_mask, uint8_t active_l);

const key_ctx_t *key_get_context();

void key_reset_event(KeyIndex num);
void key_scan(void);
void key_consume(void *);

KeyEventType key_get_event(KeyIndex num);
#endif