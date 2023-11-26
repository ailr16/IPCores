module tx_mux(
	input [1:0] selection,
	input       start_bit,
	input       data_bit,
	input       parity_bit,
	input       stop_bit,
	output      data_out
);

	assign data_out = selection[1] ? (selection[0] ? stop_bit : parity_bit) : (selection[0] ? data_bit : start_bit);

endmodule 