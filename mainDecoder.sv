module mainDecoder(input logic [5:0]Opcode ,
							output logic MentoReg,RegDst,IorD,jump,
							PCSrc, output logic ALUSrc,IRWrite,
							MenWrite,PCWrite,Branch,RegWrite, 
							output logic[1:0]ALUOp);
			logic out_control[8:0];
			
				assign MentoReg = out_control[3];
				assign RegDst = out_control[7];
				assign jump = out_control[0];
				assign ALUSrc = out_control[6];
				assign MenWrite = out_control[4];
				assign Branch = out_control[5];
				assign RegWrite = out_control[8];
				assign ALUOp = out_control[2:1];
			
			always_comb begin
				case(Opcode)
					6'b000000: out_control <= 9'b110000100;//r-type
					6'b100011: out_control <= 9'b101001000;//lw
					6'b101011: out_control <= 9'b001010000;//sw
					6'b000100: out_control <= 9'b001010000;//beq
					6'b001000: out_control <= 9'b101000000;//addi
					6'b000010: out_control <= 9'b000000001;//j
					default : out_control <= 9'bx_xxxx_xxxx;
				endcase
			end
			
	
			
			
				

endmodule