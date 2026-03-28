#include "user_key.h"
#include <stdint.h>
#include "dwt_count.h"
#include "stm32h7xx.h"
static key_ctx_t k_ctx = {0};
// static uint8_t k_context.active_level;
static const char *TAG = "Key";
uint8_t key_nums = 0;
static void prvkey_init(KeyInfo *handle, uint8_t len);
static __INLINE uint32_t key_get_now_ms() { return HAL_GetTick(); }
static __INLINE uint32_t key_get_pin_level(GPIO_TypeDef *GPIOx, uint32_t PinMask) {
    // return !LL_GPIO_IsInputPinSet(GPIOx, PinMask);
    return HAL_GPIO_ReadPin(GPIOx, PinMask);
}
void key_pin_init_cb(const KeyHandle *buf) {
    GPIO_InitTypeDef gpio_config;
    gpio_config.Mode = GPIO_MODE_INPUT;
    // gpio_config.Alternate = GPIO_AF0;
    gpio_config.Pin = buf->info.pin;
    gpio_config.Pull = buf->info.active_level ? GPIO_PULLDOWN : GPIO_PULLUP;
    gpio_config.Speed = GPIO_SPEED_FREQ_HIGH;
    HAL_GPIO_Init(buf->info.gpiox, &gpio_config);
}

void key_init(KeyInfo* keys, uint8_t len) {

    key_nums =len;
    k_ctx.get_now_ms = key_get_now_ms;
    k_ctx.get_pin_level = key_get_pin_level;
    // k_ctx.pin_init_cb = key_pin_init_cb;
    k_ctx.pin_init_cb = NULL;
    key_creat(keys, len);
}
void key_creat(KeyInfo *handle, uint8_t len) {
    if (len <= 0 || len > KEY_NUM || len + k_ctx.len > KEY_NUM) {
        // WARNING(TAG, "init len or pins invalid");
        return;
    }
    prvkey_init(handle, len);
}

static void prvkey_init(KeyInfo *hand, uint8_t len) {
    uint8_t i = k_ctx.len;
    for (; i < KEY_NUM && (i < (k_ctx.len + len)); i++) {
        KeyHandle *buf = &k_ctx.phandle[i];
        buf->info.active_level = hand[i].active_level;
        buf->info.gpiox = hand[i].gpiox;
        buf->info.pin = hand[i].pin;
        // buf->info.index = hand[i].index;
        buf->click_count = 0;
        buf->event = KE_NONE;
        buf->state = KS_IDLE;
        buf->pressed_ms = 0;
        buf->release_ms = 0;
        buf->_long_trigger = 0;
        if (k_ctx.pin_init_cb != NULL) {
            k_ctx.pin_init_cb(buf);
        }
    }
    // k_ctx.len = MIN_(i, KEY_NUM);
    k_ctx.len = i > KEY_NUM ? KEY_NUM : i;
}

void key_scan(void) {
    if (k_ctx.len == 0) {
        // WARNING(TAG, "key context len is 0 ");
        return;
    }
    for (uint8_t i = 0; i < k_ctx.len; i++) {
        KeyHandle *handle = &k_ctx.phandle[i];
        uint8_t key_pressed = (k_ctx.get_pin_level(handle->info.gpiox, handle->info.pin) == handle->info.active_level);

        // uint32_t now = get_tick_ms(); // ms
        uint32_t now = k_ctx.get_now_ms();
        switch (handle->state) {
            case KS_IDLE:
                if (key_pressed) {
                    handle->state = KS_DEBOUNCE;
                    handle->pressed_ms = now;
                }
                break;
            case KS_DEBOUNCE:
                if (!key_pressed) {
                    handle->state = KS_IDLE;
                } else if (now - handle->pressed_ms >= DEBOUNCE_MS) {
                    handle->state = KS_PRESSED;
                    handle->pressed_ms = now;
                }
                break;
            case KS_PRESSED:
                if (!key_pressed) {
                    handle->state = KS_WAIT_DOUBLE;
                    handle->release_ms = now;
                    handle->click_count++;
                } else if (now - handle->pressed_ms >= LONG_PRESSED_MS) {
                    handle->event = KE_LONG_PRESSED;
                    handle->_long_trigger = 1;
                    // 连续触发
                    handle->pressed_ms = now;
                }
                break;
            case KS_WAIT_DOUBLE:
                if (now - handle->release_ms >= WAIT_DOUBLE_MS) {
                    handle->state = KS_IDLE;
                    if (handle->_long_trigger) {
                        handle->click_count = 0;
                        handle->_long_trigger = 0;
                        break;
                    }
                    switch (handle->click_count) {
                        case 1:
                            handle->event = KE_SHORT_PRESSED;
                            break;
                        case 2:
                            handle->event = KE_DOUBLE_CLICK;
                            break;
                    }
                    handle->click_count = 0;
                }

                if (key_pressed) {
                    handle->state = KS_DEBOUNCE;
                    handle->pressed_ms = now;
                }
                break;
                // default: WARNING(TAG, "key invalid state %u ", handle->state); handle->state =
                // KS_IDLE;
        }
    }
}
void key_consume(void *arg) {
    if (k_ctx.len == 0) {
        // WARNING(TAG, "key context len is 0 ");
        return;
    }
    for (uint8_t i = 0; i < k_ctx.len; i++) {
        KeyHandle *handle = &k_ctx.phandle[i];
        switch (handle->event) {
            case KE_SHORT_PRESSED:
                // ESP_LOGI(TAG, "pin %u, num %u, short pressed", handle->pin, handle->num);
                handle->event = KE_NONE;
                break;
            case KE_LONG_PRESSED:
                // ESP_LOGI(TAG, "pin %u, num %u, long pressed", handle->pin, handle->num);
                handle->event = KE_NONE;
                break;
            case KE_DOUBLE_CLICK:
                // ESP_LOGI(TAG, "pin %u, num %u, double click", handle->pin, handle->num);
                handle->event = KE_NONE;
                break;
            default:
                break;
        }
    }
}

KeyEventType key_get_event(KeyIndex num) {
    if (num >= k_ctx.len) {
        // WARNING(TAG, "get key event invalid num %u, total %u", num, k_context.len);
        return KE_NONE;
    }
    return k_ctx.phandle[num].event;
}

const key_ctx_t *key_get_context() { return &k_ctx; }
void key_reset_event(KeyIndex num) {
    if (num > KEY_NUM || num > k_ctx.len) {
        return;
    }
    KeyHandle *buf = &k_ctx.phandle[num];
    buf->event = KE_NONE;
}