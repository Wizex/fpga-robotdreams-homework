#include "led_controller.h"

#include "xparameters.h"
#include "xil_printf.h"
#include "xinterrupt_wrap.h"

#define TIMER_CLOCK_HZ   100000000U   // keep: must match the real clock of the AXI Timer
#define SLOW_PERIOD_MS   500U         // LED moves every 0.5 s
#define FAST_PERIOD_MS   100U         // LED moves every 0.1 s

LedController *LedController::instance = nullptr;

LedController& LedController::get_instance()
{
    static LedController controller;
    instance = &controller;
    return controller;
}

int LedController::initialize()
{
    int status;

    status = init_leds();
    if (status != XST_SUCCESS) return status;

    status = init_buttons();
    if (status != XST_SUCCESS) return status;

    status = init_switches();
    if (status != XST_SUCCESS) return status;

    status = setup_timer();
    if (status != XST_SUCCESS) return status;

    return XST_SUCCESS;
}

int LedController::init_leds()
{
    int status = XGpio_Initialize(&leds, XPAR_LEDS_BASEADDR);

    if (status != XST_SUCCESS) {
        xil_printf("LED GPIO initialization failed\r\n");
        return status;
    }

    XGpio_SetDataDirection(&leds, 1, 0x0);
    XGpio_DiscreteWrite(&leds, 1, led_value);

    return XST_SUCCESS;
}

int LedController::init_buttons()
{
    int status = XGpio_Initialize(&buttons, XPAR_BUTTONS_BASEADDR);

    if (status != XST_SUCCESS) {
        xil_printf("Buttons GPIO initialization failed\r\n");
        return status;
    }

    XGpio_SetDataDirection(&buttons, 1, 0xF);

    return setup_gpio_interrupt(&buttons, interrupt_button_handler);
}

int LedController::init_switches()
{
    int status = XGpio_Initialize(&switches, XPAR_SWITCH_BASEADDR);

    if (status != XST_SUCCESS) {
        xil_printf("Switches GPIO initialization failed\r\n");
        return status;
    }

    XGpio_SetDataDirection(&switches, 1, 0xF);

    return setup_gpio_interrupt(&switches, interrupt_switch_handler);
}

int LedController::setup_gpio_interrupt(
    XGpio *gpio,
    XInterruptHandler handler)
{
    XGpio_Config *cfg = XGpio_LookupConfig(gpio->BaseAddress);

    if (cfg == nullptr) {
        return XST_FAILURE;
    }

    int status = XSetupInterruptSystem(
        gpio,
        (void *)handler,
        cfg->IntrId,
        cfg->IntrParent,
        XINTERRUPT_DEFAULT_PRIORITY
    );

    if (status != XST_SUCCESS) {
        return status;
    }

    XGpio_InterruptClear(gpio, XGPIO_IR_CH1_MASK);
    XGpio_InterruptEnable(gpio, XGPIO_IR_CH1_MASK);
    XGpio_InterruptGlobalEnable(gpio);

    return XST_SUCCESS;
}

int LedController::setup_timer()
{
    xil_printf("Timer setup started\r\n");

    XTmrCtr_Config *cfg =
        XTmrCtr_LookupConfig(XPAR_XTMRCTR_0_BASEADDR);

    if (cfg == nullptr) {
        xil_printf("AXI Timer config lookup failed\r\n");
        return XST_FAILURE;
    }

    XTmrCtr_CfgInitialize(&timer, cfg, cfg->BaseAddress);

    XTmrCtr_SetHandler(&timer, interrupt_timer_handler, this);

    update_timer_period();

    XTmrCtr_SetOptions(
        &timer,
        0,
        XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION
    );

    int status = XSetupInterruptSystem(
        &timer,
        (void *)XTmrCtr_InterruptHandler,
        cfg->IntrId,
        cfg->IntrParent,
        XINTERRUPT_DEFAULT_PRIORITY
    );

    if (status != XST_SUCCESS) {
        xil_printf("AXI Timer interrupt setup failed\r\n");
        return status;
    }

    XTmrCtr_Start(&timer, 0);

    return XST_SUCCESS;
}

void LedController::update_timer_period()
{
    u32 period_ms = (speed == FAST)
        ? FAST_PERIOD_MS
        : SLOW_PERIOD_MS;

    u32 ticks = (TIMER_CLOCK_HZ / 1000U) * period_ms;

    XTmrCtr_SetResetValue(
        &timer,
        0,
        0xFFFFFFFFU - (ticks - 1U)
    );
}

void LedController::interrupt_button_handler(void *callback_ref)
{
    // GPIO interrupt setup supplies the GPIO instance as callback_ref.
    // Use the singleton to access the controller.
    (void)callback_ref;

    LedController *controller = instance;
    if (controller == nullptr) {
        return;
    }

    u32 status = XGpio_InterruptGetStatus(&controller->buttons);

    if (status & XGPIO_IR_CH1_MASK) {
        XGpio_InterruptClear(&controller->buttons, XGPIO_IR_CH1_MASK);

        u32 values = XGpio_DiscreteRead(&controller->buttons, 1);

        if (values & 1U) {
            controller->state =
                (controller->state == RUN) ? STOP : RUN;
        }

        if (values & 2U) {
            controller->speed =
                (controller->speed == FAST) ? SLOW : FAST;

            controller->update_timer_period();
        }
    }
}

void LedController::interrupt_switch_handler(void *callback_ref)
{
    (void)callback_ref;

    LedController *controller = instance;
    if (controller == nullptr) {
        return;
    }

    u32 status = XGpio_InterruptGetStatus(&controller->switches);

    if (status & XGPIO_IR_CH1_MASK) {
        XGpio_InterruptClear(&controller->switches, XGPIO_IR_CH1_MASK);

        u32 values = XGpio_DiscreteRead(&controller->switches, 1);

        controller->direction = (values & 1U) ? RIGHT : LEFT;
    }
}

void LedController::interrupt_timer_handler(
    void *callback_ref,
    u8 timer_number)
{
    (void)timer_number;

    LedController *controller =
        static_cast<LedController *>(callback_ref);

    if (controller == nullptr || controller->state != RUN) {
        return;
    }

    if (controller->direction == RIGHT) {
        controller->led_value = (u8)(
            (controller->led_value >> 1) |
            ((controller->led_value & 1U) << 3)
        );
    } else {
        controller->led_value = (u8)(
            ((controller->led_value << 1) |
             (controller->led_value >> 3)) & 0x0FU
        );
    }

    XGpio_DiscreteWrite(&controller->leds, 1, controller->led_value);
}