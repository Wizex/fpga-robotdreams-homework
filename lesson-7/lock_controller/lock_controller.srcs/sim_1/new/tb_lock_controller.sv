module tb_lock_controller;
    logic clk, rst, unlocked_led;
    logic [3:0] digit_in;
    
    initial clk = 0;
    always #5 clk = ~clk;
    
    lock_controller #(.COUNT_MAX(3)) lc (
        .clk(clk),
        .rst(rst),
        .digit_in(digit_in),
        .unlocked_led(unlocked_led)
    );
    
    task automatic check_state(input string name, input state_t expected);
        if (lc.state == expected)
            $display("%s: STATE %s PASSED", name, expected.name());
        else begin
            $display("%s: expected %s, got %s FAILED",
            name, expected.name(), lc.state.name());
            $finish;
        end
    endtask
    
    task automatic clocks(input int n);
        repeat (n) begin
            @(posedge clk);
            #1;
        end
    endtask
    
    initial begin
        // ------------------------------------------------------------
        // Test 1: Correct code with bouncing inputs
        // ------------------------------------------------------------
        rst = 1;
        digit_in = 0;
        #1;
        check_state("Reset", LOCKED);
        
        clocks(1);
        rst = 0;
        
        // First digit: 5 bounces before becoming stable
        digit_in = 5;
        clocks(2);
        check_state("Short 5 is ignored", LOCKED);
        
        digit_in = 0;
        clocks(1);
        check_state("Bounce resets counter", LOCKED);
        
        digit_in = 5;
        clocks(4);
        check_state("5 not accepted early", LOCKED);
        
        clocks(1);
        check_state("Stable 5 accepted", WAIT_D2);
        
        // Second digit: short wrong digit must not reset state.
        digit_in = 9;
        clocks(3);
        check_state("Short wrong digit ignored", WAIT_D2);
        
        // Stable correct second digit.
        digit_in = 3;
        clocks(4);
        check_state("3 not accepted early", WAIT_D2);
        
        clocks(1);
        check_state("Stable 3 accepted", WAIT_D3);
        
        // Third digit: 7 bounces before becoming stable.
        digit_in = 7;
        clocks(2);
        
        digit_in = 4;
        clocks(1);
        check_state("7 bounce does not unlock", WAIT_D3);
        
        digit_in = 7;
        clocks(4);
        check_state("7 not accepted early", WAIT_D3);
        
        clocks(1);
        check_state("Stable 7 unlocks", UNLOCKED);
        
        // ------------------------------------------------------------
        // Test 2: Incorrect code
        // A stable wrong digit must return to LOCKED.
        // ------------------------------------------------------------
        rst = 1;
        digit_in = 0;
        #1;
        check_state("Second reset", LOCKED);
        
        clocks(1);
        rst = 0;
        
        digit_in = 5;
        clocks(5);
        check_state("Second test: 5 accepted", WAIT_D2);
        
        digit_in = 3;
        clocks(5);
        check_state("Second test: 3 accepted", WAIT_D3);
        
        // Wrong final digit: must remain stable before rejection.
        digit_in = 9;
        clocks(4);
        check_state("Wrong 9 not rejected early", WAIT_D3);
        
        clocks(1);
        check_state("Stable wrong 9 locks controller", LOCKED);
        
        $display("ALL TESTS PASSED");
        $finish;
    end
endmodule