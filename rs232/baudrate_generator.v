/*
	9600		5208 - 1
	38400		1302 - 1
	57600		868 - 1
	115200	434 - 1
*/
module baudrate_generator(
	input 		      reset,
	input 		      clk,
	input      [15:0] baud_value,
	output            clk_out
	);
	
	reg [15:0] 	counter;
	
	initial begin
		counter = 0;
	end
	
	always @( posedge clk ) begin
		if (!reset) begin
			counter <= 16'd0;
		end
		else if (clk_out) begin
			counter <= 16'd0;
		end
		else begin
			counter <= counter + 16'd1;
		end
	end
	
	assign clk_out = (counter == baud_value);
	
endmodule 