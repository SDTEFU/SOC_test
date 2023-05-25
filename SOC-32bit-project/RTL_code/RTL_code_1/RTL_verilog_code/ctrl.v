// Generator : SpinalHDL v1.8.1    git head : 2a7592004363e5b40ec43e1f122ed8641cd8965b
// Component : ctrl
// Git hash  : d1c9adfb9a7aab45a29ba6b84e3bea900a8c7bee

`timescale 1ns/1ps

module ctrl (
  input      [31:0]   io_ex_jump_addr,
  input               io_ex_jump_en,
  input               io_ex_hold_en,
  output reg [1:0]    io_outctrl_ctrl,
  output reg [31:0]   io_outctrl_jump_addr
);


  always @(*) begin
    if(io_ex_jump_en) begin
      io_outctrl_ctrl = 2'b01;
    end else begin
      if(io_ex_hold_en) begin
        io_outctrl_ctrl = 2'b10;
      end else begin
        io_outctrl_ctrl = 2'b00;
      end
    end
  end

  always @(*) begin
    if(io_ex_jump_en) begin
      io_outctrl_jump_addr = io_ex_jump_addr;
    end else begin
      if(io_ex_hold_en) begin
        io_outctrl_jump_addr = 32'h0;
      end else begin
        io_outctrl_jump_addr = 32'h0;
      end
    end
  end


endmodule
