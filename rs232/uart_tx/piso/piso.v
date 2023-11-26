module piso(
	input            clk,
	input            enable,
	input      [7:0] parallel_data,
	output reg       serial_data,
	output reg		  end_of_data
);
	
	reg [3:0] counter;
	
	initial begin
		counter = 0;
	end

	always @(posedge clk) begin
		if(enable) begin
			counter <= 0;
			if(counter == 7) begin
				counter <= 0;
				end_of_data <= 1;
			end
			else begin
				serial_data <= parallel_data[counter];
				end_of_data <= 0;
				counter <= counter + 1;
			end
		end
	end
	
	
endmodule 