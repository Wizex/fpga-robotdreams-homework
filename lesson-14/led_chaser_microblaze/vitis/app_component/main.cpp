#include "led_controller.h"

#include "xil_printf.h"
#include "xstatus.h"

int main()
{
    LedController& controller = LedController::get_instance();
    int status = controller.initialize();
    if (status != XST_SUCCESS) {
        xil_printf("LED Controller initialization failed\r\n");
        return status;
    }

    xil_printf("LED chaser started\r\n");

    while (1) {
        // LED movement is handled by the AXI Timer interrupt.
    }

    return XST_SUCCESS;
}