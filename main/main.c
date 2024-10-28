#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "soc/gpio_struct.h"
#include "driver/gpio.h"

#define LED_PIN 2  // LED pin

void app_main(void) {
    // Uključi GPIO pin kao izlaz
    GPIO.enable_w1ts = (1 << LED_PIN);  // Postavi pin za izlaz
    GPIO.enable_w1ts = (1 << LED_PIN);  // Osveži pin

    while (1) {
        // Uključi LED
        GPIO.out_w1ts = (1 << LED_PIN);   // Postavi pin na HIGH
        vTaskDelay(1000 / portTICK_PERIOD_MS);  // Čekaj 1 sekundu

        // Isključi LED
        GPIO.out_w1tc = (1 << LED_PIN);   // Postavi pin na LOW
        vTaskDelay(1000 / portTICK_PERIOD_MS);  // Čekaj 1 sekundu
    }
}
