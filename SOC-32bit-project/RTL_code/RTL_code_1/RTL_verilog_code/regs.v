// Generator : SpinalHDL v1.8.1    git head : 2a7592004363e5b40ec43e1f122ed8641cd8965b
// Component : regs
// Git hash  : fd0705f886d4881b3a6139d92a18ee3cd1cb931d

`timescale 1ns/1ps

module regs (
  input               io_clk,
  input               io_rst_n,
  input      [4:0]    io_rs1_addr,
  input      [4:0]    io_rs2_addr,
  output reg [31:0]   io_rs1_data,
  output reg [31:0]   io_rs2_data,
  input               io_w_en,
  input      [4:0]    io_rd_addr,
  input      [31:0]   io_rd_data
);

  wire       [31:0]   _zz_reg_mem_port0;
  wire       [31:0]   _zz_reg_mem_port1;
  wire       [4:0]    _zz_reg_mem_port;
  wire       [31:0]   _zz_reg_mem_port_1;
  wire       [4:0]    _zz_reg_mem_port_2;
  wire       [31:0]   _zz_reg_mem_port_3;
  wire       [4:0]    _zz_reg_mem_port_4;
  wire       [31:0]   _zz_reg_mem_port_5;
  wire       [4:0]    _zz_reg_mem_port_6;
  wire       [31:0]   _zz_reg_mem_port_7;
  wire       [4:0]    _zz_reg_mem_port_8;
  wire       [31:0]   _zz_reg_mem_port_9;
  wire       [4:0]    _zz_reg_mem_port_10;
  wire       [31:0]   _zz_reg_mem_port_11;
  wire       [4:0]    _zz_reg_mem_port_12;
  wire       [31:0]   _zz_reg_mem_port_13;
  wire       [4:0]    _zz_reg_mem_port_14;
  wire       [31:0]   _zz_reg_mem_port_15;
  wire       [4:0]    _zz_reg_mem_port_16;
  wire       [31:0]   _zz_reg_mem_port_17;
  wire       [4:0]    _zz_reg_mem_port_18;
  wire       [31:0]   _zz_reg_mem_port_19;
  wire       [4:0]    _zz_reg_mem_port_20;
  wire       [31:0]   _zz_reg_mem_port_21;
  wire       [4:0]    _zz_reg_mem_port_22;
  wire       [31:0]   _zz_reg_mem_port_23;
  wire       [4:0]    _zz_reg_mem_port_24;
  wire       [31:0]   _zz_reg_mem_port_25;
  wire       [4:0]    _zz_reg_mem_port_26;
  wire       [31:0]   _zz_reg_mem_port_27;
  wire       [4:0]    _zz_reg_mem_port_28;
  wire       [31:0]   _zz_reg_mem_port_29;
  wire       [4:0]    _zz_reg_mem_port_30;
  wire       [31:0]   _zz_reg_mem_port_31;
  wire       [4:0]    _zz_reg_mem_port_32;
  wire       [31:0]   _zz_reg_mem_port_33;
  wire       [4:0]    _zz_reg_mem_port_34;
  wire       [31:0]   _zz_reg_mem_port_35;
  wire       [4:0]    _zz_reg_mem_port_36;
  wire       [31:0]   _zz_reg_mem_port_37;
  wire       [4:0]    _zz_reg_mem_port_38;
  wire       [31:0]   _zz_reg_mem_port_39;
  wire       [4:0]    _zz_reg_mem_port_40;
  wire       [31:0]   _zz_reg_mem_port_41;
  wire       [4:0]    _zz_reg_mem_port_42;
  wire       [31:0]   _zz_reg_mem_port_43;
  wire       [4:0]    _zz_reg_mem_port_44;
  wire       [31:0]   _zz_reg_mem_port_45;
  wire       [4:0]    _zz_reg_mem_port_46;
  wire       [31:0]   _zz_reg_mem_port_47;
  wire       [4:0]    _zz_reg_mem_port_48;
  wire       [31:0]   _zz_reg_mem_port_49;
  wire       [4:0]    _zz_reg_mem_port_50;
  wire       [31:0]   _zz_reg_mem_port_51;
  wire       [4:0]    _zz_reg_mem_port_52;
  wire       [31:0]   _zz_reg_mem_port_53;
  wire       [4:0]    _zz_reg_mem_port_54;
  wire       [31:0]   _zz_reg_mem_port_55;
  wire       [4:0]    _zz_reg_mem_port_56;
  wire       [31:0]   _zz_reg_mem_port_57;
  wire       [4:0]    _zz_reg_mem_port_58;
  wire       [31:0]   _zz_reg_mem_port_59;
  wire       [4:0]    _zz_reg_mem_port_60;
  wire       [31:0]   _zz_reg_mem_port_61;
  wire       [4:0]    _zz_reg_mem_port_62;
  wire       [31:0]   _zz_reg_mem_port_63;
  wire       [31:0]   _zz_reg_mem_port_64;
  wire       [31:0]   _zz_reg_mem_port_65;
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 _zz_3;
  reg                 _zz_4;
  reg                 _zz_5;
  reg                 _zz_6;
  reg                 _zz_7;
  reg                 _zz_8;
  reg                 _zz_9;
  reg                 _zz_10;
  reg                 _zz_11;
  reg                 _zz_12;
  reg                 _zz_13;
  reg                 _zz_14;
  reg                 _zz_15;
  reg                 _zz_16;
  reg                 _zz_17;
  reg                 _zz_18;
  reg                 _zz_19;
  reg                 _zz_20;
  reg                 _zz_21;
  reg                 _zz_22;
  reg                 _zz_23;
  reg                 _zz_24;
  reg                 _zz_25;
  reg                 _zz_26;
  reg                 _zz_27;
  reg                 _zz_28;
  reg                 _zz_29;
  reg                 _zz_30;
  reg                 _zz_31;
  reg                 _zz_32;
  reg                 _zz_33;
  reg                 _zz_34;
  wire                when_regs_l29;
  wire                when_regs_l31;
  wire                when_regs_l37;
  wire                when_regs_l39;
  wire                when_regs_l50;
  wire                when_regs_l56;
  (* ram_style = "distributed" *) reg [31:0] reg_mem [0:31];

  assign _zz_reg_mem_port = 5'h0;
  assign _zz_reg_mem_port_1 = 32'h0;
  assign _zz_reg_mem_port_2 = 5'h01;
  assign _zz_reg_mem_port_3 = 32'h0;
  assign _zz_reg_mem_port_4 = 5'h02;
  assign _zz_reg_mem_port_5 = 32'h0;
  assign _zz_reg_mem_port_6 = 5'h03;
  assign _zz_reg_mem_port_7 = 32'h0;
  assign _zz_reg_mem_port_8 = 5'h04;
  assign _zz_reg_mem_port_9 = 32'h0;
  assign _zz_reg_mem_port_10 = 5'h05;
  assign _zz_reg_mem_port_11 = 32'h0;
  assign _zz_reg_mem_port_12 = 5'h06;
  assign _zz_reg_mem_port_13 = 32'h0;
  assign _zz_reg_mem_port_14 = 5'h07;
  assign _zz_reg_mem_port_15 = 32'h0;
  assign _zz_reg_mem_port_16 = 5'h08;
  assign _zz_reg_mem_port_17 = 32'h0;
  assign _zz_reg_mem_port_18 = 5'h09;
  assign _zz_reg_mem_port_19 = 32'h0;
  assign _zz_reg_mem_port_20 = 5'h0a;
  assign _zz_reg_mem_port_21 = 32'h0;
  assign _zz_reg_mem_port_22 = 5'h0b;
  assign _zz_reg_mem_port_23 = 32'h0;
  assign _zz_reg_mem_port_24 = 5'h0c;
  assign _zz_reg_mem_port_25 = 32'h0;
  assign _zz_reg_mem_port_26 = 5'h0d;
  assign _zz_reg_mem_port_27 = 32'h0;
  assign _zz_reg_mem_port_28 = 5'h0e;
  assign _zz_reg_mem_port_29 = 32'h0;
  assign _zz_reg_mem_port_30 = 5'h0f;
  assign _zz_reg_mem_port_31 = 32'h0;
  assign _zz_reg_mem_port_32 = 5'h10;
  assign _zz_reg_mem_port_33 = 32'h0;
  assign _zz_reg_mem_port_34 = 5'h11;
  assign _zz_reg_mem_port_35 = 32'h0;
  assign _zz_reg_mem_port_36 = 5'h12;
  assign _zz_reg_mem_port_37 = 32'h0;
  assign _zz_reg_mem_port_38 = 5'h13;
  assign _zz_reg_mem_port_39 = 32'h0;
  assign _zz_reg_mem_port_40 = 5'h14;
  assign _zz_reg_mem_port_41 = 32'h0;
  assign _zz_reg_mem_port_42 = 5'h15;
  assign _zz_reg_mem_port_43 = 32'h0;
  assign _zz_reg_mem_port_44 = 5'h16;
  assign _zz_reg_mem_port_45 = 32'h0;
  assign _zz_reg_mem_port_46 = 5'h17;
  assign _zz_reg_mem_port_47 = 32'h0;
  assign _zz_reg_mem_port_48 = 5'h18;
  assign _zz_reg_mem_port_49 = 32'h0;
  assign _zz_reg_mem_port_50 = 5'h19;
  assign _zz_reg_mem_port_51 = 32'h0;
  assign _zz_reg_mem_port_52 = 5'h1a;
  assign _zz_reg_mem_port_53 = 32'h0;
  assign _zz_reg_mem_port_54 = 5'h1b;
  assign _zz_reg_mem_port_55 = 32'h0;
  assign _zz_reg_mem_port_56 = 5'h1c;
  assign _zz_reg_mem_port_57 = 32'h0;
  assign _zz_reg_mem_port_58 = 5'h1d;
  assign _zz_reg_mem_port_59 = 32'h0;
  assign _zz_reg_mem_port_60 = 5'h1e;
  assign _zz_reg_mem_port_61 = 32'h0;
  assign _zz_reg_mem_port_62 = 5'h1f;
  assign _zz_reg_mem_port_63 = 32'h0;
  assign _zz_reg_mem_port_64 = 32'h0;
  assign _zz_reg_mem_port_65 = io_rd_data;
  assign _zz_reg_mem_port0 = reg_mem[io_rs1_addr];
  assign _zz_reg_mem_port1 = reg_mem[io_rs2_addr];
  always @(posedge io_clk) begin
    if(_zz_34) begin
      reg_mem[_zz_reg_mem_port] <= _zz_reg_mem_port_1;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_33) begin
      reg_mem[_zz_reg_mem_port_2] <= _zz_reg_mem_port_3;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_32) begin
      reg_mem[_zz_reg_mem_port_4] <= _zz_reg_mem_port_5;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_31) begin
      reg_mem[_zz_reg_mem_port_6] <= _zz_reg_mem_port_7;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_30) begin
      reg_mem[_zz_reg_mem_port_8] <= _zz_reg_mem_port_9;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_29) begin
      reg_mem[_zz_reg_mem_port_10] <= _zz_reg_mem_port_11;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_28) begin
      reg_mem[_zz_reg_mem_port_12] <= _zz_reg_mem_port_13;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_27) begin
      reg_mem[_zz_reg_mem_port_14] <= _zz_reg_mem_port_15;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_26) begin
      reg_mem[_zz_reg_mem_port_16] <= _zz_reg_mem_port_17;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_25) begin
      reg_mem[_zz_reg_mem_port_18] <= _zz_reg_mem_port_19;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_24) begin
      reg_mem[_zz_reg_mem_port_20] <= _zz_reg_mem_port_21;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_23) begin
      reg_mem[_zz_reg_mem_port_22] <= _zz_reg_mem_port_23;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_22) begin
      reg_mem[_zz_reg_mem_port_24] <= _zz_reg_mem_port_25;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_21) begin
      reg_mem[_zz_reg_mem_port_26] <= _zz_reg_mem_port_27;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_20) begin
      reg_mem[_zz_reg_mem_port_28] <= _zz_reg_mem_port_29;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_19) begin
      reg_mem[_zz_reg_mem_port_30] <= _zz_reg_mem_port_31;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_18) begin
      reg_mem[_zz_reg_mem_port_32] <= _zz_reg_mem_port_33;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_17) begin
      reg_mem[_zz_reg_mem_port_34] <= _zz_reg_mem_port_35;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_16) begin
      reg_mem[_zz_reg_mem_port_36] <= _zz_reg_mem_port_37;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_15) begin
      reg_mem[_zz_reg_mem_port_38] <= _zz_reg_mem_port_39;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_14) begin
      reg_mem[_zz_reg_mem_port_40] <= _zz_reg_mem_port_41;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_13) begin
      reg_mem[_zz_reg_mem_port_42] <= _zz_reg_mem_port_43;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_12) begin
      reg_mem[_zz_reg_mem_port_44] <= _zz_reg_mem_port_45;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_11) begin
      reg_mem[_zz_reg_mem_port_46] <= _zz_reg_mem_port_47;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_10) begin
      reg_mem[_zz_reg_mem_port_48] <= _zz_reg_mem_port_49;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_9) begin
      reg_mem[_zz_reg_mem_port_50] <= _zz_reg_mem_port_51;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_8) begin
      reg_mem[_zz_reg_mem_port_52] <= _zz_reg_mem_port_53;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_7) begin
      reg_mem[_zz_reg_mem_port_54] <= _zz_reg_mem_port_55;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_6) begin
      reg_mem[_zz_reg_mem_port_56] <= _zz_reg_mem_port_57;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_5) begin
      reg_mem[_zz_reg_mem_port_58] <= _zz_reg_mem_port_59;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_4) begin
      reg_mem[_zz_reg_mem_port_60] <= _zz_reg_mem_port_61;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_3) begin
      reg_mem[_zz_reg_mem_port_62] <= _zz_reg_mem_port_63;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_2) begin
      reg_mem[io_rd_addr] <= _zz_reg_mem_port_64;
    end
  end

  always @(posedge io_clk) begin
    if(_zz_1) begin
      reg_mem[io_rd_addr] <= _zz_reg_mem_port_65;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(io_w_en) begin
      if(!when_regs_l56) begin
        _zz_1 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_2 = 1'b0;
    if(io_w_en) begin
      if(when_regs_l56) begin
        _zz_2 = 1'b1;
      end
    end
  end

  always @(*) begin
    _zz_3 = 1'b0;
    if(when_regs_l50) begin
      _zz_3 = 1'b1;
    end
  end

  always @(*) begin
    _zz_4 = 1'b0;
    if(when_regs_l50) begin
      _zz_4 = 1'b1;
    end
  end

  always @(*) begin
    _zz_5 = 1'b0;
    if(when_regs_l50) begin
      _zz_5 = 1'b1;
    end
  end

  always @(*) begin
    _zz_6 = 1'b0;
    if(when_regs_l50) begin
      _zz_6 = 1'b1;
    end
  end

  always @(*) begin
    _zz_7 = 1'b0;
    if(when_regs_l50) begin
      _zz_7 = 1'b1;
    end
  end

  always @(*) begin
    _zz_8 = 1'b0;
    if(when_regs_l50) begin
      _zz_8 = 1'b1;
    end
  end

  always @(*) begin
    _zz_9 = 1'b0;
    if(when_regs_l50) begin
      _zz_9 = 1'b1;
    end
  end

  always @(*) begin
    _zz_10 = 1'b0;
    if(when_regs_l50) begin
      _zz_10 = 1'b1;
    end
  end

  always @(*) begin
    _zz_11 = 1'b0;
    if(when_regs_l50) begin
      _zz_11 = 1'b1;
    end
  end

  always @(*) begin
    _zz_12 = 1'b0;
    if(when_regs_l50) begin
      _zz_12 = 1'b1;
    end
  end

  always @(*) begin
    _zz_13 = 1'b0;
    if(when_regs_l50) begin
      _zz_13 = 1'b1;
    end
  end

  always @(*) begin
    _zz_14 = 1'b0;
    if(when_regs_l50) begin
      _zz_14 = 1'b1;
    end
  end

  always @(*) begin
    _zz_15 = 1'b0;
    if(when_regs_l50) begin
      _zz_15 = 1'b1;
    end
  end

  always @(*) begin
    _zz_16 = 1'b0;
    if(when_regs_l50) begin
      _zz_16 = 1'b1;
    end
  end

  always @(*) begin
    _zz_17 = 1'b0;
    if(when_regs_l50) begin
      _zz_17 = 1'b1;
    end
  end

  always @(*) begin
    _zz_18 = 1'b0;
    if(when_regs_l50) begin
      _zz_18 = 1'b1;
    end
  end

  always @(*) begin
    _zz_19 = 1'b0;
    if(when_regs_l50) begin
      _zz_19 = 1'b1;
    end
  end

  always @(*) begin
    _zz_20 = 1'b0;
    if(when_regs_l50) begin
      _zz_20 = 1'b1;
    end
  end

  always @(*) begin
    _zz_21 = 1'b0;
    if(when_regs_l50) begin
      _zz_21 = 1'b1;
    end
  end

  always @(*) begin
    _zz_22 = 1'b0;
    if(when_regs_l50) begin
      _zz_22 = 1'b1;
    end
  end

  always @(*) begin
    _zz_23 = 1'b0;
    if(when_regs_l50) begin
      _zz_23 = 1'b1;
    end
  end

  always @(*) begin
    _zz_24 = 1'b0;
    if(when_regs_l50) begin
      _zz_24 = 1'b1;
    end
  end

  always @(*) begin
    _zz_25 = 1'b0;
    if(when_regs_l50) begin
      _zz_25 = 1'b1;
    end
  end

  always @(*) begin
    _zz_26 = 1'b0;
    if(when_regs_l50) begin
      _zz_26 = 1'b1;
    end
  end

  always @(*) begin
    _zz_27 = 1'b0;
    if(when_regs_l50) begin
      _zz_27 = 1'b1;
    end
  end

  always @(*) begin
    _zz_28 = 1'b0;
    if(when_regs_l50) begin
      _zz_28 = 1'b1;
    end
  end

  always @(*) begin
    _zz_29 = 1'b0;
    if(when_regs_l50) begin
      _zz_29 = 1'b1;
    end
  end

  always @(*) begin
    _zz_30 = 1'b0;
    if(when_regs_l50) begin
      _zz_30 = 1'b1;
    end
  end

  always @(*) begin
    _zz_31 = 1'b0;
    if(when_regs_l50) begin
      _zz_31 = 1'b1;
    end
  end

  always @(*) begin
    _zz_32 = 1'b0;
    if(when_regs_l50) begin
      _zz_32 = 1'b1;
    end
  end

  always @(*) begin
    _zz_33 = 1'b0;
    if(when_regs_l50) begin
      _zz_33 = 1'b1;
    end
  end

  always @(*) begin
    _zz_34 = 1'b0;
    if(when_regs_l50) begin
      _zz_34 = 1'b1;
    end
  end

  assign when_regs_l29 = (io_rs1_addr == 5'h0);
  always @(*) begin
    if(when_regs_l29) begin
      io_rs1_data = 32'h0;
    end else begin
      if(when_regs_l31) begin
        io_rs1_data = io_rd_data;
      end else begin
        io_rs1_data = _zz_reg_mem_port0;
      end
    end
  end

  assign when_regs_l31 = (io_w_en && (io_rd_addr == io_rs1_addr));
  assign when_regs_l37 = (io_rs2_addr == 5'h0);
  always @(*) begin
    if(when_regs_l37) begin
      io_rs2_data = 32'h0;
    end else begin
      if(when_regs_l39) begin
        io_rs2_data = io_rd_data;
      end else begin
        io_rs2_data = _zz_reg_mem_port1;
      end
    end
  end

  assign when_regs_l39 = (io_w_en && (io_rd_addr == io_rs2_addr));
  assign when_regs_l50 = (! io_rst_n);
  assign when_regs_l56 = (io_rd_addr == 5'h0);

endmodule
