module Decimation_counter
(
input [23:0]        Deicimation_IN,
input               Start_WR,
input               CLK,

output reg          EN,
output reg          CLK_EN
//output              Min_Max_Sel
);

//assign Min_Max_Sel = CLK_EN;

reg [23:0]  Deicimation_reg;
reg str_wr;

always @(posedge CLK) begin

	str_wr <= Start_WR;
	
	if(str_wr == 0) begin
		EN <=0;
		//Deicimation_reg <= Deicimation_IN;
	end
	else begin
   
		if(Deicimation_reg == 0) begin
			Deicimation_reg <= Deicimation_IN;
			EN <= 1;			
		end
		else begin
			Deicimation_reg <= Deicimation_reg - 1'b1;
			EN <= 0;
		end
   
		CLK_EN <= EN;   
   end
   
   
end	// always




endmodule