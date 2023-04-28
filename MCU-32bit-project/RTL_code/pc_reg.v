// Generator : SpinalHDL v1.8.1    git head : 2a7592004363e5b40ec43e1f122ed8641cd8965b
// Component : pc_reg
// Git hash  : bf445f0dd02d67cffc112427716c7e049af9ac95

`timescale 1ns/1ps

module pc_reg (
  input               io_clk,
  input               io_rst_n,
  output     [31:0]   io_pc_o
);

  reg        [31:0]   clkarea_pc_o;
  wire                when_template_l18;

  assign when_template_l18 = (clkarea_pc_o == 32'h7fffffff);
  assign io_pc_o = clkarea_pc_o;
  always @(posedge io_clk or posedge io_rst_n) begin
    if(io_rst_n) begin
      clkarea_pc_o <= 32'h0;
    end else begin
      if(when_template_l18) begin
        clkarea_pc_o <= 32'h0;
      end else begin
        clkarea_pc_o <= (clkarea_pc_o + 32'h00000004);
      end
    end
  end


endmodule
