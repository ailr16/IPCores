module parity_generator(
	input  [7:0] data,
	output       parity_bit
);
	
	assign parity_bit = ^data;
	
endmodule 