// Generator : SpinalHDL v1.8.1    git head : 2a7592004363e5b40ec43e1f122ed8641cd8965b
// Component : if_module
// Git hash  : d1c9adfb9a7aab45a29ba6b84e3bea900a8c7bee

`timescale 1ns/1ps

module if_module (
  input               io_PC_reg_access,
  input               io_PC_reg_w_en,
  input      [31:0]   io_PC_reg_PC_o,
  output              io_PC_reg_done,
  output              io_if_id_done,
  output     [31:0]   io_if_id_PC_o,
  output     [31:0]   io_if_id_inst,
  input      [31:0]   io_SSE_bus_inst,
  input               io_SSE_bus_done,
  output              io_SSE_bus_access,
  output              io_SSE_bus_w_en,
  output     [31:0]   io_SSE_bus_PC_o
);


  assign io_SSE_bus_access = io_PC_reg_access;
  assign io_SSE_bus_PC_o = io_PC_reg_PC_o;
  assign io_SSE_bus_w_en = io_PC_reg_w_en;
  assign io_PC_reg_done = io_SSE_bus_done;
  assign io_if_id_done = io_SSE_bus_done;
  assign io_if_id_inst = io_SSE_bus_inst;
  assign io_if_id_PC_o = io_PC_reg_PC_o;

endmodule
