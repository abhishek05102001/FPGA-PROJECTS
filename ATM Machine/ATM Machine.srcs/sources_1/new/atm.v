`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2021 17:02:04
// Design Name: 
// Module Name: atm
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


module atm(
input clk,
input rst,
input BTN3, BTN2, BTN1,
input [3:0] SW,
output reg [7:0] LED,                                     // LED[7] is the left most-LED
output reg [6:0] digit4, digit3, digit2, digit1  // digit4 is the left-most SSD
 );
reg [3:0] password;
reg [15:0] balance; 
reg [3:0] current_state;
reg [3:0] next_state;
reg start_timer, start_timer1;
wire time_up, time_up1;

parameter [3:0] IDLE = 4'b0000;
parameter [3:0] PASS_ENT_3 = 4'b0001;
parameter [3:0] PASS_ENT_2 = 4'b0010;
parameter [3:0] PASS_ENT_1 = 4'b0011;
parameter [3:0] LOCK = 4'b0100;
parameter [3:0] ATM_MENU = 4'b0101;
parameter [3:0] MONEY = 4'b0110;
parameter [3:0] WARNING = 4'b0111;
parameter [3:0] PASS_CHG_3 = 4'b1000;
parameter [3:0] PASS_CHG_2 = 4'b1001;
parameter [3:0] PASS_CHG_1 = 4'b1010;
parameter [3:0] PASS_NEW = 4'b1011;

always @ (posedge clk or posedge rst)
begin
    if(rst)
	begin
		current_state <= IDLE;
	end
	else 
		current_state <= next_state;
end


endmodule
