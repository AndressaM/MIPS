module adder(input [31:0] a, b, output reg ovf, output reg [31:0] s);

	reg x, z;
	always@(*) begin
		{x, s[30:0]} = a[30:0] + b[30:0];
		{z,s[31]} = a[31] + b[31] + x;
		ovf = x ^ z;
	end	
endmodule