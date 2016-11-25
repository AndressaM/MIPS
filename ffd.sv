module ffd(input d, clk, reset, en, output reg q);

	always @ (posedge clk, negedge reset) begin
		if(~reset)
			q <= 0;
		else if(en)
			q <= d;	
	end
	
endmodule