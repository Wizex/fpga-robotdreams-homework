
`timescale 1ns/1ps

module moving_max_tb;

    localparam N_SAMPLES = 64;
    localparam WINDOW = 8;

    logic clk = 0;
    logic rst = 1;
    logic ap_start = 0;

    wire ap_done, ap_idle, ap_ready;

    wire [5:0] in_data_address0;
    wire in_data_ce0;
    logic [31:0] in_data_q0;

    wire [5:0] out_data_address0;
    wire out_data_ce0, out_data_we0;
    wire [31:0] out_data_d0;

    logic signed [31:0] mem_in [0:N_SAMPLES-1];
    logic signed [31:0] mem_out [0:N_SAMPLES-1];

    logic signed [31:0] golden [0:N_SAMPLES-1];
    logic signed [31:0] q_a;

    int errors = 0;
    int seed = 12345;

    always #5 clk = ~clk;

    // DUT
    moving_max dut (
        .ap_clk(clk),
        .ap_rst(rst),
        .ap_start(ap_start),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),

        .in_data_address0(in_data_address0),
        .in_data_ce0(in_data_ce0),
        .in_data_q0(in_data_q0),

        .out_data_address0(out_data_address0),
        .out_data_ce0(out_data_ce0),
        .out_data_we0(out_data_we0),
        .out_data_d0(out_data_d0)
    );

    // Input and output RAM
    always_ff @(posedge clk) begin
        if (in_data_ce0)
            q_a <= mem_in[in_data_address0];

        if (out_data_ce0 && out_data_we0)
            mem_out[out_data_address0] <= $signed(out_data_d0);
    end

    assign in_data_q0 = q_a;

    // Generate expected results
    task automatic calculate_golden;
        int idx;
        logic signed [31:0] max_value;

        for (int n = 0; n < N_SAMPLES; n++) begin
            max_value = -2147483647 - 1;

            for (int k = 0; k < WINDOW; k++) begin
                idx = n - k;

                if (idx >= 0 && mem_in[idx] > max_value)
                    max_value = mem_in[idx];
            end

            golden[n] = max_value;
        end
    endtask

    // Run one invocation
    task automatic run_once;
        int timeout;

        @(negedge clk);
        ap_start = 1;

        @(negedge clk);
        ap_start = 0;

        timeout = 0;
        while (!ap_done && timeout < 2000) begin
            @(negedge clk);
            timeout++;
        end

        if (!ap_done) begin
            $display("ERROR: ap_done timeout");
            errors++;
        end

        wait (ap_idle);
    endtask

    // Main test
    initial begin
        repeat (5) @(negedge clk);
        rst = 0;

        repeat (2) @(negedge clk);

        for (int t = 0; t < 3; t++) begin

            // Generate random input
            for (int n = 0; n < N_SAMPLES; n++) begin
                seed = seed * 1103515245 + 12345;

                mem_in[n] = (seed >> 16) % 1000;
                mem_out[n] = '0;
            end

            calculate_golden();

            run_once();

            repeat (3) @(negedge clk);

            // Compare results
            for (int n = 0; n < N_SAMPLES; n++) begin
                if (mem_out[n] !== golden[n]) begin
                    errors++;
                    $display(
                        "Mismatch: call=%0d sample=%0d DUT=%0d REF=%0d",
                        t, n, mem_out[n], golden[n]
                    );
                end
            end

        end

        if (errors == 0)
            $display("Test passed!");
        else
            $display("Test FAILED: %0d errors", errors);

        $finish;
    end

    // Global timeout
    initial begin
        #200000;
        $display("Simulation timeout!");
        $finish;
    end

endmodule
