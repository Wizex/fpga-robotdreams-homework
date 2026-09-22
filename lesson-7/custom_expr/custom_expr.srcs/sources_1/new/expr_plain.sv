module expr_plain(
    input logic clk,
    input logic rst,
    input logic [7:0] a,
    input logic [7:0] b,
    input logic [7:0] c,
    input logic [7:0] d,
    input logic [7:0] e,
    output logic [32:0] result
);
    logic [7:0] a_reg, b_reg, c_reg, d_reg, e_reg;
    
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            a_reg <= 0;
            b_reg <= 0;
            c_reg <= 0;
            d_reg <= 0;
            e_reg <= 0;
        end
        else begin
            a_reg <= a;
            b_reg <= b;
            c_reg <= c;
            d_reg <= d;
            e_reg <= e;
        end
    end
    
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            result <= 0;
        end
        else begin
            result <= (a_reg * b_reg + c_reg) * d_reg * e_reg;
        end
    end
endmodule