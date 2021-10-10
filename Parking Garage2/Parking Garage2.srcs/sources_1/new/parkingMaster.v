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


module parkingMaster(
    input clock,
    input permit,
    input pay,
    input [6:1] spot,
    input [6:1] spotexit,
    input slotSwitch,
    input passSwitch,
    input mode,
    output reg  [15:0] led,
    output gate,
    output reg [6:0] seg_cath,
    output reg [3:0] an
    );
    reg [1:0] floor;
    reg [3:0] location;
    reg [6:0] sseg;
    reg [3:0] an_temp;
    reg [6:0] sseg_temp;
    
    payCheck entrance(pay,permit,gate);

    
    always @(posedge gate)
 begin
       if (mode == 0)
    begin
        if(~spot[1])
        begin
            
            location = 4'b0001;
        end
        else if(spot[1])
            if(~spot[2])
            begin
               
               location = 4'b0010; 
            end
        else if(spot[2])
            if(~spot[3])
            begin
              
               location = 4'b0011; 
            end 
        else if(spot[3])
            if(~spot[4])
            begin
               
               location = 4'b0100; 
            end    
        else if(spot[4])
            if(~spot[5])
            begin
               
               location = 4'b0101; 
            end 
        else if(spot[5])
            if(~spot[6])
            begin
               
               location = 4'b0110; 
            end
            else
            begin
            location = 4'b0000; 
            end
    end
   else if (mode == 1)
  begin
      if (spotexit[1] && slotSwitch)
      begin
          if (spotexit[3] && spotexit[6] && ~spotexit[2]  && passSwitch)
          led[15] = 1;
          else
          led[15] = 0;
      end
      else if (spotexit [2] && slotSwitch)
      begin
          if (spotexit [1] && spotexit[5] && ~spotexit[6] && passSwitch)
          led[15] = 1;
          else
          led[15] = 0;
      end
      else if (spotexit [3] && slotSwitch)
      begin
          if (spotexit [1] && spotexit[4] && ~spotexit[2] && passSwitch)
          led[15] = 1;
          else
          led[15] = 0;
      end
      else if (spotexit [4] && slotSwitch)
      begin
          if (spotexit [5] && spotexit[6] && ~spotexit[3] && passSwitch)
          led[15] = 1;
          else
          led[15] = 0;
      end
      else if (spotexit [5] && slotSwitch)
      begin
          if (spotexit [3] && spotexit[4] && ~spotexit[6] && passSwitch)
          led[15] = 1;
          else
          led[15] = 0;
      end
      else if (spotexit [6] && slotSwitch)
      begin
          if (spotexit [5] && spotexit[1] && ~spotexit[2] && passSwitch)
          led[15] = 1;
          else
          led[15] = 0;
      end
      else
      begin
      led[12] = 1;
      end
       end
 end
    assign gate = (|(~spot))&&gate;
    reg [19:0] refresh_display;
    wire[1:0] an_inputs;
    
    always @(posedge clock)
    begin
        refresh_display <= refresh_display + 1;
    end
    assign an_inputs =  refresh_display[19:15];
    
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