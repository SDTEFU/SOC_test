// Generator : SpinalHDL v1.8.1    git head : 2a7592004363e5b40ec43e1f122ed8641cd8965b
// Component : regs
// Git hash  : 95d8c783a8062253a3835f54f35debb452e857bb

`timescale 1ns/1ps

module regs (
  input      [4:0]    io_rs1_addr,
  input      [4:0]    io_rs2_addr,
  output     [31:0]   io_rs1_data,
  output     [31:0]   io_rs2_data,
  input               io_w_en,
  input      [4:0]    io_rd_addr,
  input      [31:0]   io_rd_data,
  input               clk,
  input               reset
);

  wire       [31:0]   _zz_reg_mem_port0;
  wire                _zz_reg_mem_port;
  (* ram_style = "distributed" *) reg [31:0] reg_mem [0:31];

  assign _zz_reg_mem_port = 1'b1;
  assign _zz_reg_mem_port0 = reg_mem[io_rs1_addr];
  always @(posedge clk) begin
    if(_zz_reg_mem_port) begin
      reg_mem[io_rd_addr] <= io_rd_data;
    end
  end

  assign io_rs1_data = _zz_reg_mem_port0;
  assign io_rs2_data = 32'h0000000c;

endmodule
