module unitControl(input logic [5:0]opcode,
                   input logic [5:0]funct, 
					    input logic [1:0]AluOp,
						 input logic zero,
						 output logic MentoReg,RegDst,jump,
						 output logic ALUSrc,MenWrite,
						 output logic RegWrite,Branch, 
						 output logic [2:0]AluControl);
						 
	 logic [1:0] aluOp;			
	 
	 logic	pcsrcAND;
	 mainDecoder MD(opcode ,MentoReg,RegDst,jump,ALUSrc,MenWrite,
						RegWrite,Branch, aluOp);
	 aluDecoder AD(funct,aluOp,AluControl);
	 
	 
	assign pcsrcAND = Branch & zero;
		
	

endmodule