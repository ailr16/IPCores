module rs232 (input             reset,
				  input             clk,
				  input      [1:0]  sel,
				  output            clk_out,
				  output            reset_led
				  );
	
	reg [15:0] value;
	
	always @(sel) begin
		case (sel)
			2'b00:	value <= 433;
			2'b01:	value <= 867;
			2'b10:	value <= 1301;
			2'b11:	value <= 5207;
		endcase
	end
	
	baudrate_generator bg(
		.reset(reset),
		.clk(clk),
		.baud_value(value),
		.clk_out(clk_out)
	);
	
	assign reset_led = reset;
	
endmodule 