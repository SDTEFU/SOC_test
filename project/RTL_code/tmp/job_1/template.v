// Generator : SpinalHDL v1.8.1    git head : 2a7592004363e5b40ec43e1f122ed8641cd8965b
// Component : template

`timescale 1ns/1ps

module template (
  input               io_clk,
  input               io_rst_n,
  input               io_start,
  input      [7:0]    io_data,
  output              io_rs232_tx,
  output              io_done,
  input               clk,
  input               reset
);

  reg        [7:0]    clkarea_data_bat;
  reg                 clkarea_state;
  reg        [9:0]    clkarea_baud_cnt;
  wire                when_template_l46;
  reg                 clkarea_bit_flag;
  wire                when_template_l59;
  reg        [3:0]    clkarea_bit_cnt;
  wire                when_template_l70;
  reg                 clkarea_rx232_tx;
  reg                 clkarea_done;
  wire                when_template_l130;

  assign when_template_l46 = (clkarea_baud_cnt == 10'h0e9);
  assign when_template_l59 = (clkarea_baud_cnt == 10'h001);
  assign when_template_l70 = (clkarea_bit_cnt == 4'b1010);
  assign io_rs232_tx = clkarea_rx232_tx;
  assign when_template_l130 = (clkarea_bit_flag && (clkarea_bit_cnt == 4'b1010));
  assign io_done = clkarea_done;
  always @(posedge io_clk or negedge io_rst_n) begin
    if(!io_rst_n) begin
      clkarea_data_bat <= 8'h0;
      clkarea_state <= 1'b0;
      clkarea_baud_cnt <= 10'h0;
      clkarea_bit_flag <= 1'b0;
      clkarea_bit_cnt <= 4'b0000;
      clkarea_rx232_tx <= 1'b0;
      clkarea_done <= 1'b0;
    end else begin
      if(io_start) begin
        clkarea_data_bat <= io_data;
      end else begin
        clkarea_data_bat <= clkarea_data_bat;
      end
      if(io_start) begin
        clkarea_state <= 1'b1;
      end else begin
        if(io_done) begin
          clkarea_state <= 1'b0;
        end else begin
          clkarea_state <= clkarea_state;
        end
      end
      if(clkarea_state) begin
        if(when_template_l46) begin
          clkarea_baud_cnt <= 10'h0;
        end else begin
          clkarea_baud_cnt <= (clkarea_baud_cnt + 10'h001);
        end
      end else begin
        clkarea_baud_cnt <= 10'h0;
      end
      if(when_template_l59) begin
        clkarea_bit_flag <= 1'b1;
      end else begin
        clkarea_bit_flag <= 1'b0;
      end
      if(clkarea_bit_flag) begin
        if(when_template_l70) begin
          clkarea_bit_cnt <= 4'b0000;
        end else begin
          clkarea_bit_cnt <= (clkarea_bit_cnt + 4'b0001);
        end
      end else begin
        clkarea_bit_cnt <= clkarea_bit_cnt;
      end
      if(clkarea_state) begin
        if(clkarea_bit_flag) begin
          case(clkarea_bit_cnt)
            4'b0000 : begin
              clkarea_rx232_tx <= 1'b0;
            end
            4'b0001 : begin
              clkarea_rx232_tx <= clkarea_data_bat[0];
            end
            4'b0010 : begin
              clkarea_rx232_tx <= clkarea_data_bat[1];
            end
            4'b0011 : begin
              clkarea_rx232_tx <= clkarea_data_bat[2];
            end
            4'b0100 : begin
              clkarea_rx232_tx <= clkarea_data_bat[3];
            end
            4'b0101 : begin
              clkarea_rx232_tx <= clkarea_data_bat[4];
            end
            4'b0110 : begin
              clkarea_rx232_tx <= clkarea_data_bat[5];
            end
            4'b0111 : begin
              clkarea_rx232_tx <= clkarea_data_bat[6];
            end
            4'b1000 : begin
              clkarea_rx232_tx <= clkarea_data_bat[7];
            end
            4'b1001 : begin
              clkarea_rx232_tx <= 1'b1;
            end
            default : begin
              clkarea_rx232_tx <= 1'b1;
            end
          endcase
        end
      end else begin
        clkarea_rx232_tx <= 1'b1;
      end
      if(when_template_l130) begin
        clkarea_done <= 1'b1;
      end else begin
        clkarea_done <= 1'b0;
      end
    end
  end


endmodule
