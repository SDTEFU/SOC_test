// Generator : SpinalHDL v1.8.1    git head : 2a7592004363e5b40ec43e1f122ed8641cd8965b
// Component : id_ex
// Git hash  : d1c9adfb9a7aab45a29ba6b84e3bea900a8c7bee

`timescale 1ns/1ps

module id_ex (
  input               io_sys_clk,
  input               io_sys_rst_n,
  input      [31:0]   io_id_inst,
  input      [31:0]   io_id_inst_addr,
  input      [31:0]   io_id_rs1_data,
  input      [31:0]   io_id_rs2_data,
  input      [4:0]    io_id_rd_addr,
  input               io_id_rd_w_en,
  output     [31:0]   io_ex_inst,
  output     [31:0]   io_ex_inst_addr,
  output     [31:0]   io_ex_rs1_data,
  output     [31:0]   io_ex_rs2_data,
  output     [4:0]    io_ex_rd_addr,
  output              io_ex_rd_w_en
);

  reg        [31:0]   clkarea_inst;
  reg        [31:0]   clkarea_inst_addr;
  reg        [31:0]   clkarea_rs1_data;
  reg        [31:0]   clkarea_rs2_data;
  reg        [4:0]    clkarea_rd_addr;
  reg                 clkarea_rd_w_en;

  assign io_ex_inst = clkarea_inst;
  assign io_ex_inst_addr = clkarea_inst_addr;
  assign io_ex_rs1_data = clkarea_rs1_data;
  assign io_ex_rs2_data = clkarea_rs2_data;
  assign io_ex_rd_addr = clkarea_rd_addr;
  assign io_ex_rd_w_en = clkarea_rd_w_en;
  always @(posedge io_sys_clk) begin
    if(!io_sys_rst_n) begin
      clkarea_inst <= 32'h0;
      clkarea_inst_addr <= 32'h0;
      clkarea_rs1_data <= 32'h0;
      clkarea_rs2_data <= 32'h0;
      clkarea_rd_addr <= 5'h0;
      clkarea_rd_w_en <= 1'b0;
    end else begin
      clkarea_inst <= io_id_inst;
      clkarea_inst_addr <= io_id_inst_addr;
      clkarea_rs1_data <= io_id_rs1_data;
      clkarea_rs2_data <= io_id_rs2_data;
      clkarea_rd_addr <= io_id_rd_addr;
      clkarea_rd_w_en <= io_id_rd_w_en;
    end
  end


endmodule
