`timescale 1ns / 1ps

// AXI4-Lite slave for the people counter.
//   0x00  SENS   (write)  bit0 = sensor A, bit1 = sensor B
//   0x04  COUNT  (read)   number of people inside
//   0x08  CTRL   (write)  bit0 = 1 clears counter and FSM
//
// Only addr[3:2] is decoded, so C_S_AXI_ADDR_WIDTH must be 4.
// WSTRB is ignored: every write is treated as a full 32-bit write.
module people_counter_v1_0_S00_AXI #(
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    parameter integer C_S_AXI_ADDR_WIDTH = 4
) (
    input  wire                                  S_AXI_ACLK,
    input  wire                                  S_AXI_ARESETN,

    // Write address channel
    input  wire [C_S_AXI_ADDR_WIDTH-1:0]         S_AXI_AWADDR,
    input  wire [2:0]                            S_AXI_AWPROT,
    input  wire                                  S_AXI_AWVALID,
    output reg                                   S_AXI_AWREADY,

    // Write data channel
    input  wire [C_S_AXI_DATA_WIDTH-1:0]         S_AXI_WDATA,
    input  wire [(C_S_AXI_DATA_WIDTH/8)-1:0]     S_AXI_WSTRB,
    input  wire                                  S_AXI_WVALID,
    output reg                                   S_AXI_WREADY,

    // Write response channel
    output reg  [1:0]                            S_AXI_BRESP,
    output reg                                   S_AXI_BVALID,
    input  wire                                  S_AXI_BREADY,

    // Read address channel
    input  wire [C_S_AXI_ADDR_WIDTH-1:0]         S_AXI_ARADDR,
    input  wire [2:0]                            S_AXI_ARPROT,
    input  wire                                  S_AXI_ARVALID,
    output reg                                   S_AXI_ARREADY,

    // Read data channel
    output reg  [C_S_AXI_DATA_WIDTH-1:0]         S_AXI_RDATA,
    output reg  [1:0]                            S_AXI_RRESP,
    output reg                                   S_AXI_RVALID,
    input  wire                                  S_AXI_RREADY
);

    // ------------------------------------------------------------------
    // Write channel
    // ------------------------------------------------------------------
    reg [C_S_AXI_ADDR_WIDTH-1:0] awaddr;
    reg [C_S_AXI_DATA_WIDTH-1:0] wdata_holding;
    reg                          aw_holding;
    reg                          w_holding;

    // One-cycle pulse once both address and data have been captured.
    wire write_fire  = aw_holding && w_holding && !S_AXI_BVALID;
    wire sens_write  = write_fire && (awaddr[3:2] == 2'd0);
    wire clear_write = write_fire && (awaddr[3:2] == 2'd2) && wdata_holding[0];

    wire [31:0] people_count;

    people_counter_core core_i (
        .clk         (S_AXI_ACLK),
        .resetn      (S_AXI_ARESETN),
        .sens_write  (sens_write),
        .sens        (wdata_holding[1:0]),
        .clear_write (clear_write),
        .count       (people_count)
    );

    // READY is dropped in the cycle right after a handshake, so a second
    // back-to-back request cannot be accepted while the first is pending.
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            S_AXI_AWREADY <= 1'b0;
            S_AXI_WREADY  <= 1'b0;
            S_AXI_BVALID  <= 1'b0;
            S_AXI_BRESP   <= 2'b00;
            aw_holding    <= 1'b0;
            w_holding     <= 1'b0;
            awaddr        <= {C_S_AXI_ADDR_WIDTH{1'b0}};
            wdata_holding <= {C_S_AXI_DATA_WIDTH{1'b0}};
        end else begin
            S_AXI_AWREADY <= !aw_holding && !S_AXI_BVALID
                             && !(S_AXI_AWVALID && S_AXI_AWREADY);
            S_AXI_WREADY  <= !w_holding && !S_AXI_BVALID
                             && !(S_AXI_WVALID && S_AXI_WREADY);

            if (S_AXI_AWVALID && S_AXI_AWREADY) begin
                awaddr     <= S_AXI_AWADDR;
                aw_holding <= 1'b1;
            end

            if (S_AXI_WVALID && S_AXI_WREADY) begin
                wdata_holding <= S_AXI_WDATA;
                w_holding     <= 1'b1;
            end

            if (write_fire) begin
                S_AXI_BVALID <= 1'b1;
                S_AXI_BRESP  <= 2'b00;  // OKAY
                aw_holding   <= 1'b0;
                w_holding    <= 1'b0;
            end else if (S_AXI_BVALID && S_AXI_BREADY) begin
                S_AXI_BVALID <= 1'b0;
            end
        end
    end

    // ------------------------------------------------------------------
    // Read channel
    // ------------------------------------------------------------------
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            S_AXI_ARREADY <= 1'b0;
            S_AXI_RVALID  <= 1'b0;
            S_AXI_RRESP   <= 2'b00;
            S_AXI_RDATA   <= {C_S_AXI_DATA_WIDTH{1'b0}};
        end else begin
            S_AXI_ARREADY <= !S_AXI_RVALID
                             && !(S_AXI_ARVALID && S_AXI_ARREADY);

            if (S_AXI_ARVALID && S_AXI_ARREADY) begin
                S_AXI_RVALID <= 1'b1;
                S_AXI_RRESP  <= 2'b00;  // OKAY
                case (S_AXI_ARADDR[3:2])
                    2'd1:    S_AXI_RDATA <= people_count;
                    default: S_AXI_RDATA <= {C_S_AXI_DATA_WIDTH{1'b0}};
                endcase
            end else if (S_AXI_RVALID && S_AXI_RREADY) begin
                S_AXI_RVALID <= 1'b0;
            end
        end
    end

endmodule
