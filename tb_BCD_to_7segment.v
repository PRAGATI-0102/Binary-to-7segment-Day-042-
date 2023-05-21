`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2023 10:25:06 PM
// Design Name: 
// Module Name: tb_BCD_to_7segment
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


module tb_BCD_to_7segment();

        reg [3:0]BCD;
wire [6:0]segment7;

BCD_to_7segment dut(BCD, segment7);
     
     initial
     begin
            BCD= 4'd0;   
            #10;
            BCD= 4'd1; 
            #10;
            BCD= 4'd2; 
            #10;
            BCD= 4'd3; 
            #10;
            BCD= 4'd4; 
            #10;
            BCD= 4'd5; 
            #10;
            BCD= 4'd6; 
            #10;
            BCD= 4'd7; 
            #10;
            BCD= 4'd8; 
            #10;
            BCD= 4'd9; 
            #10;
	end
	
    initial
    begin
        $monitor("\t BCD: %d : 7 segment display: %h", BCD, segment7);
        #100;
        $finish;
    end 
    
endmodule
