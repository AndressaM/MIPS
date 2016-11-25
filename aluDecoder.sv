module aluDecoder(input logic [5:0]funct, 
						input logic [1:0]AluOp , output logic [2:0]AluControl);
		
	always_latch
	begin
		case (AluOp)
			2'b00 : AluControl <= 3'b010;//add
			2'b01 : AluControl <= 3'b110;//subtract
		default: 
		
			case(funct)
				6'b100000: AluControl <= 3'b010;//add
				6'b100010: AluControl <= 3'b110;//subtract
				6'b100100: AluControl <= 3'b000;//and
				6'b100101: AluControl <= 3'b001;//or
				6'b101010: AluControl <= 3'b111;//set less than
				default:	AluControl <= 3'bxxx;
			endcase
			
		endcase
	end

		
endmodule