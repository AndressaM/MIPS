module alu(input logic a,b aluControl, output logic aluResult);
	 
	always@(*) begin
			case(aluControl)
				0: assign aluResult = a+b;
				1: assign aluResult = a-b;
				2: assign aluResult = a;
			endcase
	end	
	 
endmodule