`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/29 09:40:43
// Design Name: 
// Module Name: rgb
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

module rgb(
    input               PClk,
    input [11:0]        VtcHCnt,
    input [10:0]        VtcVCnt,
    output reg [23:0]   RGB_render,
    input [0:0]        gray,
 
    input [3:0] num
   );

 reg [13:0]Address=0;
    wire [7:0]R_Data;
    wire [7:0]G_Data;
    wire [7:0]B_Data;
    
always@(posedge PClk) begin
 
    if(VtcHCnt==640-100 | VtcHCnt==640+100 | VtcVCnt==360-133 | VtcVCnt==360+133)//label 2 cross line. The intersection point is the ball's center.
        RGB_render <= 24'b11111111_00000000_00000000;
    else if((VtcHCnt > 30 && VtcHCnt <= 130) && (VtcVCnt > 40 && VtcVCnt <= 140))
    begin
            if(num==4'b1111)begin//
                            Address=(VtcHCnt-29)*100+(VtcVCnt-139);
                            RGB_render<={R_Data,B_Data,G_Data};
                        end
               
               else if(num==1)begin              
                            Address=(VtcHCnt-29)*100+(VtcVCnt-139);
                            begin
                            if(VtcHCnt>=30&&VtcHCnt<64)
                            begin
                             if(VtcVCnt>=40&&VtcVCnt<74)
                             RGB_render<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                        end  
                        end  
                                     
                     else if(num==2)begin             
                            Address=(VtcHCnt-29)*100+(VtcVCnt-139);
                            begin
                            if(VtcHCnt>=64&&VtcHCnt<98)
                            begin
                             if(VtcVCnt>=40&&VtcVCnt<74)
                             RGB_render<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                        end    
               end 
               
                else if(num==3)begin             
                            Address=(VtcHCnt-29)*100+(VtcVCnt-139);
                            begin
                            if(VtcHCnt>=98&&VtcHCnt<130)
                            begin
                             if(VtcVCnt>=40&&VtcVCnt<74)
                             RGB_render<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                        end    
               end 
                else if(num==4)begin             
                            Address=(VtcHCnt-29)*100+(VtcVCnt-139);
                            begin
                            if(VtcHCnt>=30&&VtcHCnt<64)
                            begin
                             if(VtcVCnt>=74&&VtcVCnt<108)
                             RGB_render<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                        end 
                        end   

                else if(num==5)begin             
                            Address=(VtcHCnt-29)*100+(VtcVCnt-139); 
                            begin
                            if(VtcHCnt>=64&&VtcHCnt<98)
                            begin
                             if(VtcVCnt>=74&&VtcVCnt<108)
                             RGB_render<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                        end    
               end 
             else if(num==6)begin             
                            Address=(VtcHCnt-29)*100+(VtcVCnt-139);
                            begin
                            if(VtcHCnt>=98&&VtcHCnt<130)
                            begin
                             if(VtcVCnt>=74&&VtcVCnt<108)
                             RGB_render<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                        end    
               end  
  
   else if(num==7)begin             
                            Address=(VtcHCnt-29)*100+(VtcVCnt-139);
                            begin
                            if(VtcHCnt>=30&&VtcHCnt<64)
                            begin
                             if(VtcVCnt>=108&&VtcVCnt<140)
                             RGB_render<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                        end    
               end 
                                    
   else if(num==8)begin             
                            Address=(VtcHCnt-29)*100+(VtcVCnt-139);
                            begin
                            if(VtcHCnt>=64&&VtcHCnt<98)
                            begin
                             if(VtcVCnt>=108&&VtcVCnt<140)
                             RGB_render<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                        end    
               end 
   else if(num==9)begin             
                            Address=(VtcHCnt-29)*100+(VtcVCnt-139);
                            begin
                            if(VtcHCnt>=98&&VtcHCnt<130)
                            begin
                             if(VtcVCnt>=108&&VtcVCnt<140)
                             RGB_render<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_render<={R_Data,B_Data,G_Data};
                        end    
  end  
  end
    else
         RGB_render<={24{gray}};
         end

    Picture_R_Rom R_ROM (
      .clka(PClk),    // input wire clka
      .ena(1),      // input wire ena
      .addra(Address),  // input wire [13 : 0] addra
      .douta(R_Data)  // output wire [7 : 0] douta
    );
        Picture_G_Rom G_ROM (
      .clka(PClk),    // input wire clka
      .ena(1),      // input wire ena
      .addra(Address),  // input wire [13 : 0] addra
      .douta(G_Data)  // output wire [7 : 0] douta
    );
       Picture_B_Rom B_ROM (
      .clka(PClk),    // input wire clka
      .ena(1),      // input wire ena
      .addra(Address),  // input wire [13 : 0] addra
      .douta(B_Data)  // output wire [7 : 0] douta
    );


endmodule

