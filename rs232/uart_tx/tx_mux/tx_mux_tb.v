module tx_mux_tb();

	reg [1:0] selection;
	reg       start_bit;
	reg       data_bit;
	reg       parity_bit;
	reg       stop_bit;
	wire      data_out;
	
	tx_mux DUT(
		.selection(selection),
		.start_bit(start_bit),
		.data_bit(data_bit),
		.parity_bit(parity_bit),
		.stop_bit(stop_bit),
		.data_out(data_out)
	);
	
	/*
		00		start_bit
		01		data_bit
		10		parity_bit
		11		stop_bit
	*/
	
	initial begin
		#0		selection  = 0;
				start_bit  = 1;
				
		#10	selection  = 1;
				start_bit  = 0;
				data_bit   = 1;
				
		#10	selection  = 2;
				data_bit   = 0;
				parity_bit = 1;
				
		#10	selection  = 3;
				parity_bit = 0;
				stop_bit   = 1;
		#10	stop_bit   = 0;
		
		#20;
		
		#10	stop_bit   = 1;
		
		#20;
				
	end

endmodule 