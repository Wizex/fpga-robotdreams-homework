typedef enum logic [1:0] {
    LOCKED,
    WAIT_D2,
    WAIT_D3,
    UNLOCKED
} state_t;

module lock_controller #(
    parameter int unsigned COUNT_MAX = 200_000
) (
    input logic clk,
    input logic rst,
    input logic [3:0] digit_in,
    output logic unlocked_led
);

    state_t state, next_state;
    
    localparam logic [3:0] digits [0:2] = '{4'd5, 4'd3, 4'd7};
    
    int unsigned counter;
    logic [3:0] prev_digit_in;
    
    always_ff @(posedge clk or posedge rst) begin
        if (rst) state <= LOCKED;
        else state <= next_state;
    end
    
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 0;
            prev_digit_in <= 0;
        end else begin
            prev_digit_in <= digit_in;
            counter <= (prev_digit_in == digit_in && counter < COUNT_MAX) ? counter + 1 : 0;
        end
    end
    
    always_comb begin
        next_state = state;
        
        if (counter == COUNT_MAX) begin
            case (state)
                LOCKED: if (digit_in == digits[0]) next_state = WAIT_D2;
                WAIT_D2: next_state = (digit_in == digits[1]) ? WAIT_D3 : LOCKED;
                WAIT_D3: next_state = (digit_in == digits[2]) ? UNLOCKED : LOCKED;
                UNLOCKED: next_state = UNLOCKED;
                default: next_state = LOCKED;
            endcase
        end
    end
    
    assign unlocked_led = (state == UNLOCKED);

endmodule