`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/29 09:32:22
// Design Name: 
// Module Name: rgb_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module rgb_test (
  PClk,
  gray,
  VtcHCnt,
  VtcVCnt,
  RGB_render,
  num
);

input wire PClk;
input wire [0 : 0] gray;
input wire [11 : 0] VtcHCnt;
input wire [10 : 0] VtcVCnt;
output wire [23 : 0] RGB_render;
input wire [3 : 0] num;

  rgb inst (
    .PClk(PClk),
    .gray(gray),
    .VtcHCnt(VtcHCnt),
    .VtcVCnt(VtcVCnt),
    .RGB_render(RGB_render),
    .num(num)
  );
endmodule
