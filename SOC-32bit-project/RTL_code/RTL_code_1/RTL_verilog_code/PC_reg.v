// Generator : SpinalHDL v1.8.1    git head : 2a7592004363e5b40ec43e1f122ed8641cd8965b
// Component : PC_reg
// Git hash  : 7f4d7e5b30c4803fd31bc3a40a4667ab1bf2ae07

`timescale 1ns/1ps

module PC_reg (
  input               io_clk,
  input               io_rst_n,
  input      [1:0]    io_ctrl,
  input      [31:0]   io_jump_addr,
  output              io_USE,
  input               io_belong,
  output              io_access,
  output reg [31:0]   io_pc_o,
  output              io_w_en,
  input               io_done
);

  reg        [31:0]   clkarea_pc_o;
  reg                 clkarea_access_sign;
  wire                when_PC_reg_l44;
  wire                when_PC_reg_l47;
  wire                when_PC_reg_l50;
  wire                when_PC_reg_l52;

  assign io_USE = 1'b1;
  assign io_w_en = 1'b0;
  assign when_PC_reg_l44 = (clkarea_pc_o == 32'hffffffff);
  assign when_PC_reg_l47 = (io_ctrl == 2'b01);
  assign when_PC_reg_l50 = (io_ctrl == 2'b10);
  assign when_PC_reg_l52 = (io_done && io_belong);
  assign io_access = clkarea_access_sign;
  always @(*) begin
    if(clkarea_access_sign) begin
      io_pc_o = clkarea_pc_o;
    end else begin
      io_pc_o = 32'h0;
    end
  end

  always @(posedge io_clk) begin
    if(!io_rst_n) begin
      clkarea_pc_o <= 32'h0;
      clkarea_access_sign <= 1'b1;
    end else begin
      if(when_PC_reg_l44) begin
        clkarea_pc_o <= 32'h0;
        clkarea_access_sign <= 1'b1;
      end else begin
        if(when_PC_reg_l47) begin
          clkarea_pc_o <= io_jump_addr;
          clkarea_access_sign <= 1'b1;
        end else begin
          if(when_PC_reg_l50) begin
            clkarea_pc_o <= clkarea_pc_o;
          end else begin
            if(when_PC_reg_l52) begin
              clkarea_pc_o <= (clkarea_pc_o + 32'h00000004);
              clkarea_access_sign <= 1'b1;
            end else begin
              clkarea_pc_o <= clkarea_pc_o;
            end
          end
        end
      end
      if(clkarea_access_sign) begin
        clkarea_access_sign <= 1'b0;
      end
    end
  end


endmodule
