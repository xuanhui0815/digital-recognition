module Video_Generator(
    input clk,
    input [3:0]key1,
    input RGB_VDE,
    input [11:0]Set_X,
    input [11:0]Set_Y,
    output reg[23:0]RGB_Data=24'hffff00    //RBG
    );
    reg [13:0]Address=0;
    wire [7:0]R_Data;
    wire [7:0]G_Data;
    wire [7:0]B_Data;
    


    always@(*)
        begin
          if(Set_X==640-100 | Set_X==640+100 | Set_Y==360-133 | Set_Y==360+133)//label 2 cross line. The intersection point is the ball's center.
        RGB_Data <= 24'b11111111_00000000_00000000; 
         
        begin
                if(key1==1)begin
              
                if(Set_X>=910&&Set_X<1010)
                begin
                    if(Set_Y>=490&&Set_Y<590)
                        begin
                            Address=(Set_X-909)*100+(Set_Y-489);
                            if(Set_X>=910&&Set_X<944)
                            begin
                             if(Set_Y>=490&&Set_Y<524)
                             RGB_Data<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                        end
                    else
                        RGB_Data<=24'hffffff;
                end
            else
               RGB_Data<=24'hffffff;    
               end
               
                else if (key1==2)begin
                if(Set_X>=910&&Set_X<1010)
                begin
                if(Set_Y>=490&&Set_Y<590)
                        begin
                        Address=(Set_X-909)*100+(Set_Y-489);
                        if(Set_X>=944&&Set_X<978)
                            begin
                             if(Set_Y>=490&&Set_Y<524)
                             RGB_Data<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                        end
                    else
                        RGB_Data<=24'hffffff;
                end
            else
               RGB_Data<=24'hffffff;  
               end
               
               
               else if (key1==3)begin
                if(Set_X>=910&&Set_X<1010)
                begin
                if(Set_Y>=490&&Set_Y<590)
                        begin
                        Address=(Set_X-909)*100+(Set_Y-489);
                        if(Set_X>=978&&Set_X<1010)
                            begin
                             if(Set_Y>=490&&Set_Y<524)
                             RGB_Data<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                        end
                    else
                        RGB_Data<=24'hffffff;
                end
            else
               RGB_Data<=24'hffffff;  
               end
               
               
               else if (key1==4)begin
                if(Set_X>=910&&Set_X<1010)
                begin
                if(Set_Y>=490&&Set_Y<590)
                        begin
                        Address=(Set_X-909)*100+(Set_Y-489);
                        if(Set_X>=910&&Set_X<944)
                            begin
                             if(Set_Y>=524&&Set_Y<558)
                             RGB_Data<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                        end
                    else
                        RGB_Data<=24'hffffff;
                end
            else
               RGB_Data<=24'hffffff;  
               end
               
               
               else if (key1==5)begin
                if(Set_X>=910&&Set_X<1010)
                begin
                if(Set_Y>=490&&Set_Y<590)
                        begin
                        Address=(Set_X-909)*100+(Set_Y-489);
                        if(Set_X>=944&&Set_X<978)
                            begin
                             if(Set_Y>=524&&Set_Y<558)
                             RGB_Data<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                        end
                    else
                        RGB_Data<=24'hffffff;
                end
            else
               RGB_Data<=24'hffffff;  
               end
               
               
               else if (key1==6)begin
                if(Set_X>=910&&Set_X<1010)
                begin
                if(Set_Y>=490&&Set_Y<590)
                        begin
                        Address=(Set_X-909)*100+(Set_Y-489);
                        if(Set_X>=978&&Set_X<1010)
                            begin
                             if(Set_Y>=524&&Set_Y<558)
                             RGB_Data<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                        end
                    else
                        RGB_Data<=24'hffffff;
                end
            else
               RGB_Data<=24'hffffff;  
               end
               
               
               else if (key1==7)begin
                if(Set_X>=910&&Set_X<1010)
                begin
                if(Set_Y>=490&&Set_Y<590)
                        begin
                        Address=(Set_X-909)*100+(Set_Y-489);
                        if(Set_X>=910&&Set_X<944)
                            begin
                             if(Set_Y>=558&&Set_Y<590)
                             RGB_Data<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                        end
                    else
                        RGB_Data<=24'hffffff;
                end
            else
               RGB_Data<=24'hffffff;  
               end
               
               
               else if (key1==8)begin
                if(Set_X>=910&&Set_X<1010)
                begin
                if(Set_Y>=490&&Set_Y<590)
                        begin
                        Address=(Set_X-909)*100+(Set_Y-489);
                        if(Set_X>=944&&Set_X<978)
                            begin
                             if(Set_Y>=558&&Set_Y<590)
                             RGB_Data<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                        end
                    else
                        RGB_Data<=24'hffffff;
                end
            else
               RGB_Data<=24'hffffff;  
               end
               
            
            else if(key1==9) begin
               if(Set_X>=910&&Set_X<1010)
                begin
                if(Set_Y>=490&&Set_Y<590)
                        begin
                        Address=(Set_X-909)*100+(Set_Y-489);
                        if(Set_X>=978&&Set_X<1010)
                            begin
                             if(Set_Y>=558&&Set_Y<590)
                             RGB_Data<={~R_Data,~B_Data,~G_Data};
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                             end
                             else
                             RGB_Data<={R_Data,B_Data,G_Data};
                        end
                    else
                        RGB_Data<=24'hffffff;
                end
            else
               RGB_Data<=24'hffffff;  
               end
               
              else begin//没有按键按下
            if(Set_X>=910&&Set_X<1010)
                begin
                    if(Set_Y>=490&&Set_Y<590)
                        begin
                            Address=(Set_X-909)*100+(Set_Y-489);
                            RGB_Data<={R_Data,B_Data,G_Data};
                        end
                    else
                        RGB_Data<=24'hffffff;
                end
            else
               RGB_Data<=24'hffffff; 
               end
               end
               
              
        end

    Picture_R_Rom R_ROM (
      .clka(clk),    // input wire clka
      .ena(1),      // input wire ena
      .addra(Address),  // input wire [13 : 0] addra
      .douta(R_Data)  // output wire [7 : 0] douta
    );
    Picture_G_Rom G_ROM (
      .clka(clk),    // input wire clka
      .ena(1),      // input wire ena
      .addra(Address),  // input wire [13 : 0] addra
      .douta(G_Data)  // output wire [7 : 0] douta
    );
    Picture_B_Rom B_ROM (
      .clka(clk),    // input wire clka
      .ena(1),      // input wire ena
      .addra(Address),  // input wire [13 : 0] addra
      .douta(B_Data)  // output wire [7 : 0] douta
    );

endmodule