// Generator : SpinalHDL v1.8.1    git head : 2a7592004363e5b40ec43e1f122ed8641cd8965b
// Component : PC_reg
// Git hash  : e5db854b6a6b5f38b79c6ba3459d7d76fbf5d54a

`timescale 1ns/1ps

module PC_reg (
  input               io_clk,
  input               io_rst_n,
  output              io_access,
  input               io_done,
  output     [31:0]   io_pc_o
);

  reg        [31:0]   clkarea_pc_o;
  reg                 clkarea_access_sign;
  wire                when_template_l27;
  wire                when_template_l29;

  assign when_template_l27 = (clkarea_pc_o == 32'hffffffff);
  assign when_template_l29 = (io_done == 1'b1);
  assign io_access = clkarea_access_sign;
  assign io_pc_o = clkarea_pc_o;
  always @(posedge io_clk) begin
    if(!io_rst_n) begin
      clkarea_pc_o <= 32'h0;
      clkarea_access_sign <= 1'b0;
    end else begin
      if(when_template_l27) begin
        clkarea_pc_o <= 32'h0;
      end else begin
        if(when_template_l29) begin
          clkarea_pc_o <= (clkarea_pc_o + 32'h00000004);
          clkarea_access_sign <= 1'b1;
        end else begin
          clkarea_pc_o <= clkarea_pc_o;
        end
      end
      if(clkarea_access_sign) begin
        clkarea_access_sign <= 1'b0;
      end
    end
  end


endmodule
