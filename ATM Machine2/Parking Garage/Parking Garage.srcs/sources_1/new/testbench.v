`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2021 18:36:31
// Design Name: 
// Module Name: testbench
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


module testbench(
    input clock,
    input permit,
    input pay,
    input [16:1] spot,
    output gate,
    output reg [6:0] seg_cath,
    output reg [3:0] an
    );
    reg [1:0] floor;
    reg [3:0] location;
    reg [6:0] sseg;
    reg [3:0] an_temp;
    reg [6:0] sseg_temp;
    
    GateAccess entrance(pay,permit,gate);
    
    always @(posedge gate)
    begin
        if(~spot[1])
        begin
            floor = 2'b01;
            location = 4'b0001;
        end
        else if(spot[1])
            if(~spot[2])
            begin
               floor = 2'b01;
               location = 4'b0010; 
            end
        else if(spot[2])
            if(~spot[3])
            begin
               floor = 2'b01;
               location = 4'b0011; 
            end 
        else if(spot[3])
            if(~spot[4])
            begin
               floor = 2'b01;
               location = 4'b0100; 
            end    
        else if(spot[4])
            if(~spot[5])
            begin
               floor = 2'b01;
               location = 4'b0101; 
            end 
        else if(spot[5])
            if(~spot[6])
            begin
               floor = 2'b01;
               location = 4'b0110; 
            end
        else if(spot[6])
            if(~spot[7])
            begin
               floor = 2'b01;
               location = 4'b0111; 
            end
        else if(spot[7])
            if(~spot[8])
            begin
               floor = 2'b01;
               location = 4'b1000; 
            end    
        else if(spot[8])
            if(~spot[9])
            begin
               floor = 2'b10;
               location = 4'b0001; 
            end   
         else if(spot[9])
            if(~spot[10])
            begin
               floor = 2'b10;
               location = 4'b0010; 
            end
         else if(spot[10])
            if(~spot[11])
            begin
               floor = 2'b10;
               location = 4'b0011; 
            end 
         else if(spot[11])
            if(~spot[12])
            begin
               floor = 2'b10;
               location = 4'b0100; 
            end  
         else if(spot[12])
            if(~spot[13])
            begin
               floor = 2'b10;
               location = 4'b0101; 
            end
         else if(spot[13])
            if(~spot[14])
            begin
               floor = 2'b10;
               location = 4'b0110; 
            end
         else if(spot[14])
            if(~spot[15])
            begin
               floor = 2'b10;
               location = 4'b0111; 
            end
         else if(spot[15])
            if(~spot[16])
            begin
               floor = 2'b10;
               location = 4'b1000; 
            end
            else
            begin
            floor = 2'b00;
            location = 4'b0000; 
            end
        
    end
    assign gate = (|(~spot))&&gate;
    reg [19:0] refresh_display;
    wire[1:0] an_inputs;
    
    always @(posedge clock)
    begin
        refresh_display <= refresh_display + 1;
    end
    assign an_inputs =  refresh_display[19:16];
    
    always @(*)
    begin
        case (an_inputs)
         2'b00:
         begin
            an_temp = 4'b1110;
            case(location)
                4'b0001:
                    sseg = 4'b0001;
               4'b0010:
                    sseg = 4'b0010;
               4'b0011:
                    sseg = 4'b0011;
                4'b0100:
                    sseg = 4'b0100;
                4'b0101:
                    sseg = 4'b0101;
                 4'b0110:
                    sseg = 4'b0110;
                 4'b0111:
                    sseg = 4'b0111;
                 4'b1000:
                    sseg = 4'b1000;
            endcase
            if(floor == 2'b00)
                sseg = 4'b0000;
          end
            2'b01:
                begin
                  an_temp = 4'b1101;
                  case(floor)
                    2'b00:
                     sseg = 4'b0000;
                    2'b01:
                     sseg = 4'b0001;
                    2'b10:
                     sseg = 4'b0010;
                  endcase
                end
            2'b10:
             begin
                an_temp = 4'b1111;
             end
             2'b11:
             begin
                an_temp = 4'b1111;
             end
        endcase
        case(sseg)
        4'b0000: sseg_temp = 7'b0111111;
        4'b0001: sseg_temp = 7'b1111001;
        4'b0010: sseg_temp = 7'b0100100;
        4'b0011: sseg_temp = 7'b0110000;
        4'b0100: sseg_temp = 7'b0011001;
        4'b0101: sseg_temp = 7'b0010010;
        4'b0110: sseg_temp = 7'b0000010;
        4'b0111: sseg_temp = 7'b1111000;
        4'b1000: sseg_temp = 7'b0000000;
        endcase
        seg_cath = sseg_temp;
        an = an_temp;
    end
    
endmodule
