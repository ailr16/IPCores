module parity_generator_tb();
	reg  [7:0] data;
	wire       parity_bit;
	
	parity_generator DUT(
		.data(data),
		.parity_bit(parity_bit)
	);
	
	initial begin
		#0		data = 8'b00000001;
		#10	data = 8'b00000011;
		#10	data = 8'b00000111;
		#10	data = 8'b00001111;
		#10	data = 8'b00011111;
		#10	data = 8'b00111111;
		#10	data = 8'b01111111;
		#10	data = 8'b11111111;
		#10	data = 8'b10000001;
		#10	data = 8'b10011001;
		#10	data = 8'b10001001;
		#10;
	end
	
endmodule 