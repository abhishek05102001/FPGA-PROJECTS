`timescale 1ns / 1ps

/*
clk_divider module reduces 25MHz/50MHz/100MHz (40ns/20ns/10ns) clock 
to 20Hz/40Hz/80Hz (50ms/25ms/12.5ms) by dividing the clock with 625000
*/

module clk_divider(
	input clk_in,
	input rst,
	output reg divided_clk=0
    );


reg [24:0] cnt = 0;

always@(posedge clk_in or posedge rst)
begin
	if (rst==1) 
    begin
		cnt <= 0;
        divided_clk <= 0;
	end
	else begin
		cnt = cnt+1;
        divided_clk= cnt[19];

	end
    

end
	
endmodule