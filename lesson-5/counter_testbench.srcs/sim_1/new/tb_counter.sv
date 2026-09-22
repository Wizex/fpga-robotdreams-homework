module tb_counter;
    reg clk, rst, load;
    reg [3:0] data_in;
    reg en;
    reg up_down;
    wire [3:0] count;
    
    counter dut(
        .clk(clk),
        .rst(rst),
        .load(load),
        .data_in(data_in),
        .en(en),
        .up_down(up_down),
        .count(count)
    );
    initial clk = 0;
    always #5 clk = ~clk;
    
    task automatic check_count (input [3:0] expected, input string name);
        if (count === expected) begin
            $display("%s PASS: %d", name, count);
        end
        else begin
            $display("%s FAIL: %d", name, count);
        end
    endtask;
    
    initial begin
        rst = 1;
        @(posedge clk); #1;
        
        rst = 0;
        load = 1;
        data_in = 4'd10;
        
        @(posedge clk); #1;
        
        load = 0; #1;
        
        check_count(10, "LOAD DATA");
        
        en = 1;
        up_down = 1;
        @(posedge clk); #1;
        @(posedge clk); #1;
        @(posedge clk); #1;
        
        check_count(13, "COUNT UP");
        
        @(posedge clk); #1;
        @(posedge clk); #1;
        @(posedge clk); #1;
        
        check_count(0, "COUNT UP WRAP");
        
        en = 0;
        @(posedge clk); #1;
        @(posedge clk); #1;
        
        check_count(0, "COUNT DISABLED");
        
        en = 1;
        up_down = 0;
        @(posedge clk); #1;
        
        check_count(15, "COUNT DOWN WRAP");
        
        load = 1;
        data_in = 4'd5;
        up_down = 1;
        
        @(posedge clk); #1;
        
        check_count(5, "LOAD PRIORITY");
        
        data_in = 4'd8;
        up_down = 0;
        
        @(posedge clk); #1;
        load = 0;
        
        @(posedge clk); #1;
        @(posedge clk); #1;
        
        check_count(6, "COUNT DOWN");
        
        $finish;
    end
endmodule