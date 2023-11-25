`timescale 1ns/1ns

module baudrate_generator_tb();
	reg 	 	   reset;
	reg 	 	   clk;
	reg  [11:0] baud_value;
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
		#1		baud_value = 867;
	end
	
	initial begin
		#128000	$finish;
	end
	
	always begin
		#10 	clk = ~clk;
	end
	
endmodule 