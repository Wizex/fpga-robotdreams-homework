`timescale 1ns / 1ps

module tb_system;

    reg  clk_p     = 1'b0;
    wire clk_n     = ~clk_p;
    reg  reset_rtl = 1'b0;

    always #5 clk_p = ~clk_p;

    design_1_wrapper dut (
        .diff_clock_rtl_clk_p (clk_p),
        .diff_clock_rtl_clk_n (clk_n),
        .reset_rtl            (reset_rtl)
    );

    initial begin
        #100;
        reset_rtl = 1'b1;
        #500000;
        $finish;
    end

endmodule