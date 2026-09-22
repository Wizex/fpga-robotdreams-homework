module decoder #(parameter WIDTH = 4) (
    input logic [$clog2(WIDTH)-1:0] in,
    output logic [WIDTH-1:0] out
);
    always_comb begin
        out = '0;
        out[in] = 1'b1;
    end
endmodule
