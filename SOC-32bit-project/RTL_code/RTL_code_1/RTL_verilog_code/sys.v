// Generator : SpinalHDL v1.8.1    git head : 2a7592004363e5b40ec43e1f122ed8641cd8965b
// Component : sys
// Git hash  : d1c9adfb9a7aab45a29ba6b84e3bea900a8c7bee

`timescale 1ns/1ps

module sys (
  input               io_ckl,
  input               io_rst_n,
  output              io_sys_clk,
  output              io_sys_rst_n
);

  reg                 clkarea_rst_one;

  assign io_sys_clk = io_ckl;
  assign io_sys_rst_n = clkarea_rst_one;
  always @(posedge io_ckl) begin
    if(!io_rst_n) begin
      clkarea_rst_one <= 1'b0;
    end else begin
      clkarea_rst_one <= 1'b1;
    end
  end


endmodule
