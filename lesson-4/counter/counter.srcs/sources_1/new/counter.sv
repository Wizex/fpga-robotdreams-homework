module counter(
    input logic clk,
    input logic rst,
    output logic [3:0] out     
);
    always_ff @(posedge clk) begin
        // Synchronous reset
        if (rst)
            out <= 0;
        else
            out <= out + 1;
    end
endmodule
