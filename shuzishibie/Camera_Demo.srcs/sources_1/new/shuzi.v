`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/28 19:38:23
// Design Name: 
// Module Name: shuzi
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


module shuzi(
  pclk,
  VtcHCnt,
  VtcVCnt,
  Binary,
  num
);

input wire pclk;
input wire [11 : 0] VtcHCnt;
input wire [10 : 0] VtcVCnt;
input wire Binary;
output wire [3 : 0] num;

  digital_recognition #(
    .CENTER_H(640),
    .CENTER_V(360),
    .VtcVCnt_max(266),
    .VtcHCnt_max(200),
    .VtcHCnt_l(540),
    .VtcHCnt_r(740),
    .VtcVCnt_u(227),
    .VtcVCnt_d(493),
    .X1(333),
    .X2(404)
  ) inst (
    .pclk(pclk),
    .VtcHCnt(VtcHCnt),
    .VtcVCnt(VtcVCnt),
    .Binary(Binary),
    .num(num)
  );
endmodule


