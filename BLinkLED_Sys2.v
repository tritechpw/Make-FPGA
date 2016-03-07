`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:50:24 05/01/2015 
// Design Name: 
// Module Name:    BLinkLED_Sys2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BLinkLED_Sys2(
    input CLOCK_IN,
    input RESET,
    output OUT_HIGH,
    output OUT_LOW 
    );
	 
//-----Internal Variables-----
reg[31:0]blinkcount;

//---- internal signals

wire clk_in;
wire reset_in;

//------Code Starts Here------

assign clk_in = CLOCK_IN;
assign reset_in = RESET;
assign OUT_HIGH = blinkcount[21];
assign OUT_LOW = blinkcount[20];

always @(posedge clk_in) 
if (reset_in) begin 
	blinkcount <= 32'b0;
end
else
begin
	blinkcount <= blinkcount + 1;
end

endmodule
