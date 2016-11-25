module mainDecoder   (input logic [5:0]opcode ,
								output logic MentoReg,RegDst,jump,
								output logic ALUSrc,MenWrite,
								output logic RegWrite,Branch, 
								output logic [1:0]aluOp);
			
				logic [8:0] out_control;
			
				assign aluOp = out_control [2:1];
				assign MentoReg = out_control [3];
				assign RegDst = out_control [7];
				assign jump = out_control [0];
				assign ALUSrc = out_control [6];
				assign MenWrite = out_control [4];
				assign Branch = out_control [5];
				assign RegWrite = out_control [8];
				
			
			always_comb
				
				case(opcode)
				
					6'b000000: out_control <= 9'b110000010;
					6'b100011: out_control <= 9'b101001000;
					6'b101011: out_control <= 9'b001010000;
					6'b000100: out_control <= 9'b001010000;
					6'b001000: out_control <= 9'b101000000;
					6'b000010: out_control <= 9'b000000100;
					default : out_control <=  9'bxxxxxxxxx;
				endcase
				

endmodule