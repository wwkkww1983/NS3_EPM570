module RLE
(
	input [7:0]			LA_IN_DATA,
	input       		CLK_EN,
	input				RLE_EN,
	input          		CLK,

	output reg [7:0]	LA_OUT_DATA,
	output [7:0]		LA_RLE_OUT_DATA,
	output reg			LA_SRAM_ADDR_CNT_EN
	
);

reg addr_cnt_en_0;//, addr_cnt_en_1;
reg[7:0] la_in_data_0, la_in_data_1;
reg[7:0] rle_cnt, rle_cnt_1;

assign LA_RLE_OUT_DATA = rle_cnt_1;

always @(posedge CLK) begin


	if(CLK_EN == 0)	begin

		//rle_cnt <= 0;
		LA_SRAM_ADDR_CNT_EN <= 0;
		
	end
	else begin

		la_in_data_0 <= LA_IN_DATA;
		la_in_data_1 <= la_in_data_0;
		rle_cnt_1 <= rle_cnt;
		
		if( (la_in_data_0 != LA_IN_DATA) || (RLE_EN == 0) ) begin
		
			addr_cnt_en_0 <= 1;
			rle_cnt <= 0;
			
		end
		else begin
		
			addr_cnt_en_0 <= 0;
			rle_cnt <= rle_cnt + 1'b1;
			
		end
		
		//addr_cnt_en_1 <= addr_cnt_en_0;
		LA_SRAM_ADDR_CNT_EN <= addr_cnt_en_0;	
		
		LA_OUT_DATA <= la_in_data_0;
		//LA_RLE_OUT_DATA <= rle_cnt;
				
	end
	
end // always psg CLK


endmodule