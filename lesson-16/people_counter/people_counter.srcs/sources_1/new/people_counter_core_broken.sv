`timescale 1ns / 1ps

module people_counter_core (
    input  wire        clk,
    input  wire        resetn,
    input  wire        sens_write,
    input  wire [1:0]  sens,
    input  wire        clear_write,
    output reg  [31:0] count
);

    localparam [2:0] IDLE      = 3'd0;
    localparam [2:0] A_ONLY    = 3'd1;
    localparam [2:0] AB_FROM_A = 3'd2;
    localparam [2:0] B_AFTER_A = 3'd3;
    localparam [2:0] B_ONLY    = 3'd4;
    localparam [2:0] AB_FROM_B = 3'd5;
    localparam [2:0] A_AFTER_B = 3'd6;

    reg [2:0] state;

    always @(posedge clk) begin
        if (!resetn) begin
            state <= IDLE;
            count <= 32'd0;
        end else if (clear_write) begin
            state <= IDLE;
            count <= 32'd0;
        end else if (sens_write) begin
            case (state)
                IDLE: begin
                    case (sens)
                        2'b01:   state <= A_ONLY;
                        2'b10:   state <= B_ONLY;
                        default: state <= IDLE;
                    endcase
                end

                A_ONLY: begin
                    if      (sens == 2'b01) state <= A_ONLY;
                    else if (sens == 2'b11) state <= AB_FROM_A;
                    else                    state <= IDLE;
                end

                AB_FROM_A: begin
                    if      (sens == 2'b11) state <= AB_FROM_A;
                    else if (sens == 2'b10) state <= B_AFTER_A;
                    else                    state <= IDLE;
                end

                B_AFTER_A: begin
                    if (sens == 2'b00) begin
                        count <= count;  // BUG: should be count + 32'd1
                        state <= IDLE;
                    end else if (sens == 2'b10) begin
                        state <= B_AFTER_A;
                    end else begin
                        state <= IDLE;
                    end
                end

                B_ONLY: begin
                    if      (sens == 2'b10) state <= B_ONLY;
                    else if (sens == 2'b11) state <= AB_FROM_B;
                    else                    state <= IDLE;
                end

                AB_FROM_B: begin
                    if      (sens == 2'b11) state <= AB_FROM_B;
                    else if (sens == 2'b01) state <= A_AFTER_B;
                    else                    state <= IDLE;
                end

                A_AFTER_B: begin
                    if (sens == 2'b00) begin
                        if (count != 32'd0)
                            count <= count - 32'd1;
                        state <= IDLE;
                    end else if (sens == 2'b01) begin
                        state <= A_AFTER_B;
                    end else begin
                        state <= IDLE;
                    end
                end

                default: state <= IDLE;
            endcase
        end
    end

endmodule
