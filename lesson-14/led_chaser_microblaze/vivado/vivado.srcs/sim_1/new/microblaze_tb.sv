
`timescale 1ns / 1ps

module microblaze_tb;

    // 100 MHz clock
    localparam real CLK_PERIOD = 8.0;

    // Firmware button mapping
    localparam BTN_RUN_STOP = 0;
    localparam BTN_SPEED    = 1;

    // DUT inputs
    reg sys_clock;
    reg reset_rtl;

    reg [3:0] buttons;
    reg [1:0] switches;

    // DUT output
    wire [3:0] leds;

    integer led_changes = 0;

    // ------------------------------------------------
    // Device Under Test
    // ------------------------------------------------

    design_1_wrapper dut (
        .sys_clock(sys_clock),
        .reset_rtl(reset_rtl),

        .arduino_a0_a5_tri_i(buttons),
        .arduino_a0_a5_1_tri_i(switches),

        .arduino_a0_a5_0_tri_io(leds)
    );

    // ------------------------------------------------
    // Clock
    // ------------------------------------------------

    initial begin
        sys_clock = 0;
        forever #(CLK_PERIOD / 2) sys_clock = ~sys_clock;
    end

    // ------------------------------------------------
    // LED monitoring
    // ------------------------------------------------

    always @(leds) begin
        if ((^leds) !== 1'bx) begin
            $display("[%0t ns] LED = %04b", $time, leds);
            led_changes = led_changes + 1;
        end
    end

    // ------------------------------------------------
    // Button press
    // ------------------------------------------------

    task press_button(input integer button);
        begin
            $display("[%0t ns] Press button %0d", $time, button);

            buttons[button] = 1'b1;

            // Keep button pressed for 1 ms
            #1_000_000;

            buttons[button] = 1'b0;

            // Allow interrupt processing
            #10_000_000;
        end
    endtask

    // ------------------------------------------------
    // Main test
    // ------------------------------------------------

    
    initial begin
    
        $display("MicroBlaze LED Chaser Simulation");
    
        buttons  = 4'b0000;
        switches = 2'b0000;
    
        reset_rtl = 1'b1;
        #200;
        reset_rtl = 1'b0;
    
        // Firmware initialization
        #200_000;
    
        // TEST 1: Default movement
        $display("TEST 1: Default movement");
        #500_000;
    
        // TEST 2: Change direction
        $display("TEST 2: Reverse direction");
        switches[0] = 1'b1;
        #300_000;
    
        // TEST 3: Fast mode
        $display("TEST 3: Fast movement");
        buttons[BTN_SPEED] = 1'b1;
        #10_000;
        buttons[BTN_SPEED] = 1'b0;
        #300_000;
    
        // TEST 4: Slow mode
        $display("TEST 4: Slow movement");
        buttons[BTN_SPEED] = 1'b1;
        #10_000;
        buttons[BTN_SPEED] = 1'b0;
        #500_000;
    
        // TEST 5: Stop
        $display("TEST 5: Stop");
        buttons[BTN_RUN_STOP] = 1'b1;
        #10_000;
        buttons[BTN_RUN_STOP] = 1'b0;
        #300_000;
    
        // TEST 6: Resume
        $display("TEST 6: Resume");
        buttons[BTN_RUN_STOP] = 1'b1;
        #10_000;
        buttons[BTN_RUN_STOP] = 1'b0;
        #500_000;
    
        $display("Simulation finished");
        $display("LED transitions: %0d", led_changes);
    
        $finish;
    
    end
    

endmodule
