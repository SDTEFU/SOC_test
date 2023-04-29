// Generator : SpinalHDL v1.8.1    git head : 2a7592004363e5b40ec43e1f122ed8641cd8965b
// Component : pc_reg
// Git hash  : e48625a8d5787804e64c011ceef3a0646b4b5d5d

`timescale 1ns/1ps

module pc_reg (
  input               io_clk,
  input               io_rst_n,
  output     [31:0]   io_pc_o
);

  reg        [31:0]   clkarea_pc_o;
  wire                when_template_l24;

  assign when_template_l24 = (clkarea_pc_o == 32'hffffffff);
  assign io_pc_o = clkarea_pc_o;
  always @(posedge io_clk) begin
    if(!io_rst_n) begin
      clkarea_pc_o <= 32'h0;
    end else begin
      if(when_template_l24) begin
        clkarea_pc_o <= 32'h0;
      end else begin
        clkarea_pc_o <= (clkarea_pc_o + 32'h00000004);
      end
    end
  end


endmodule
