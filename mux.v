`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2021 10:47:17 PM
// Design Name: 
// Module Name: mux
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


module mux #(parameter ancho=4)(
    input [ancho-1:0] a, b, c, d,
    input [1:0] sel,
    output reg [ancho-1:0] out
    ); 



    always @(*) begin
        case(sel)
            2'b00: out=a;
            2'b01: out=b;
            2'b10: out=c;
            2'b11: out=d;
            default out=1'bx;
        endcase
    end

endmodule
