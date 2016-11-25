module desloc2	(input logic [31:0]a ,
					output logic [31:0]saida );

					assign saida = {a[29:0], 2'b00};
endmodule 