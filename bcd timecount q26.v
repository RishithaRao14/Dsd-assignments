`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2023 16:27:03
// Design Name: 
// Module Name: 
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
////////////////////////////////////////////////////////////////////////////
module bcd_Count(
    input clock, reset,
    output reg [3:0]dout
    );
initial dout = 0;
 
always @ (posedge (clock))
   begin 
        if (reset) 
            dout <= 0; 
        else if (dout <= 9)
            dout <= dout + 1; 
        else if (dout == 9) 
            dout <= 0;
   end
endmodule