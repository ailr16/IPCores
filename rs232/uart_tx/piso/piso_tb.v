`timescale 1ns/1ns

module piso_tb();
	reg       clk;
	reg       enable;
	reg [7:0] parallel_data;
	wire      serial_data;
	wire      end_of_data;
	
	piso DUT(
		.clk(clk),
		.enable(enable),
		.parallel_data(parallel_data),
		.serial_data(serial_data),
		.end_of_data(end_of_data)
	);
	
	initial begin
		clk    = 0;
		enable = 0;
	end
	
	initial begin
		#0	  parallel_data = 8'b11010100;
		#20  enable 		 = 1;
		#220 $finish;
	end
	
	always begin
		#10	clk = ~clk;
	end
endmodule 