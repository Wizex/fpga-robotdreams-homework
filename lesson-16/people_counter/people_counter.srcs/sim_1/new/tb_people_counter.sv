`timescale 1ns / 1ps

module tb_people_counter;

    // ------------------------------------------------------------------
    // Clock, reset, AXI4-Lite signals
    // ------------------------------------------------------------------
    reg         clk    = 1'b0;
    reg         resetn = 1'b0;

    reg  [3:0]  awaddr  = 4'd0;
    reg  [2:0]  awprot  = 3'd0;
    reg         awvalid = 1'b0;
    wire        awready;

    reg  [31:0] wdata   = 32'd0;
    reg  [3:0]  wstrb   = 4'hf;
    reg         wvalid  = 1'b0;
    wire        wready;

    wire [1:0]  bresp;
    wire        bvalid;
    reg         bready  = 1'b1;

    reg  [3:0]  araddr  = 4'd0;
    reg  [2:0]  arprot  = 3'd0;
    reg         arvalid = 1'b0;
    wire        arready;

    wire [31:0] rdata;
    wire [1:0]  rresp;
    wire        rvalid;
    reg         rready  = 1'b1;

    integer errors = 0;

    always #5 clk = ~clk;

    people_counter_v1_0 dut (
        .s00_axi_aclk    (clk),
        .s00_axi_aresetn (resetn),
        .s00_axi_awaddr  (awaddr),
        .s00_axi_awprot  (awprot),
        .s00_axi_awvalid (awvalid),
        .s00_axi_awready (awready),
        .s00_axi_wdata   (wdata),
        .s00_axi_wstrb   (wstrb),
        .s00_axi_wvalid  (wvalid),
        .s00_axi_wready  (wready),
        .s00_axi_bresp   (bresp),
        .s00_axi_bvalid  (bvalid),
        .s00_axi_bready  (bready),
        .s00_axi_araddr  (araddr),
        .s00_axi_arprot  (arprot),
        .s00_axi_arvalid (arvalid),
        .s00_axi_arready (arready),
        .s00_axi_rdata   (rdata),
        .s00_axi_rresp   (rresp),
        .s00_axi_rvalid  (rvalid),
        .s00_axi_rready  (rready)
    );

    // ------------------------------------------------------------------
    // Watchdog: stops the run with FAIL if the AXI bus ever hangs
    // ------------------------------------------------------------------
    initial begin
        #200000;
        $display("FAIL: timeout, AXI transaction did not complete");
        $finish;
    end

    task axi_write;
        input [3:0]  addr;
        input [31:0] data;
        begin
            @(negedge clk);
            awaddr  = addr;
            wdata   = data;
            awvalid = 1'b1;
            wvalid  = 1'b1;
            while (!(awready && wready)) @(posedge clk);
            @(negedge clk);
            awvalid = 1'b0;
            wvalid  = 1'b0;
            while (!bvalid) @(posedge clk);
            @(posedge clk);
        end
    endtask

    task axi_read_count;
        output [31:0] value;
        begin
            @(negedge clk);
            araddr  = 4'h4;
            arvalid = 1'b1;
            while (!arready) @(posedge clk);
            @(negedge clk);
            arvalid = 1'b0;
            while (!rvalid) @(posedge clk);
            value = rdata;
            @(posedge clk);
        end
    endtask

    task sens;
        input [1:0] value;
        begin
            axi_write(4'h0, {30'd0, value});
        end
    endtask

    task clear_counter;
        begin
            axi_write(4'h8, 32'd1);
        end
    endtask

    task expect_count;
        input [31:0] expected;
        reg   [31:0] actual;
        begin
            axi_read_count(actual);
            if (actual !== expected) begin
                $display("FAIL: expected COUNT=%0d, got %0d at t=%0t",
                         expected, actual, $time);
                errors = errors + 1;
            end else begin
                $display("OK: COUNT=%0d", actual);
            end
        end
    endtask

    initial begin
        repeat (4) @(posedge clk);
        @(negedge clk);
        resetn = 1'b1;

        // 1: one person enters: 00 -> A -> AB -> B -> 00
        clear_counter;
        sens(2'b00); sens(2'b01); sens(2'b11); sens(2'b10); sens(2'b00);
        expect_count(1);

        // 2: leaving an empty room must not underflow
        clear_counter;
        sens(2'b10); sens(2'b11); sens(2'b01); sens(2'b00);
        expect_count(0);

        // 3: person approaches A and turns back: no completed crossing
        clear_counter;
        sens(2'b01); sens(2'b00);
        expect_count(0);

        // 4: two people enter, then one exits
        clear_counter;
        sens(2'b01); sens(2'b11); sens(2'b10); sens(2'b00);
        sens(2'b01); sens(2'b11); sens(2'b10); sens(2'b00);
        sens(2'b10); sens(2'b11); sens(2'b01); sens(2'b00);
        expect_count(1);

        if (errors == 0)
            $display("PASS: all people-counter scenarios passed");
        else
            $display("FAIL: %0d check(s) failed", errors);

        #20;
        $finish;
    end

endmodule
