`timescale 1ns/1ns

/*
	9600		5208 - 1
	38400		1302 - 1
	57600		868 - 1
	115200	434 - 1
*/

module baudrate_generator_tb();
	reg 	 	   reset;
	reg 	 	   clk;
	reg  [15:0] baud_value;
	wire 		   clk_out;
	
	baudrate_generator DUT(
		.reset(reset),
		.clk(clk),
		.baud_value(baud_value),
		.clk_out(clk_out)
		);
	
	initial begin
		reset 	= 1;
		clk 		= 0;
	end
	
	initial begin
		#1		baud_value = 16'd867;
	end
	
	initial begin
		#128000	$finish;
	end
	
	always begin
		#10 	clk = ~clk;
	end
	
endmodule 