module mux(
    input logic sel,
    input logic [1:0] d,
    output logic out
);
    always_comb begin
        case (sel)
            1'b0: out = d[0]; 
            /* Uncomment to fix latch
            1'b1: out = d[1];
            default: out = 'z;
            */
        endcase
    end;
endmodule
