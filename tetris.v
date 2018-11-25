module datapath(clock, reset,
	init_block, translate_down,
	translate_left, translate_right,
	block, fallen_blocks, gg, just_fell);
	input clock, reset;
	input init_block, translate_down;
	input translate_left, translate_right;

	// reg[8:5] is the block's x coordinate
	// reg[4:0] is the block's y coordinate
	output reg [8:0] block;
	// fallen[1:10] is the top row, fallen[191:200] is the bottom row
	output reg [200:0] fallen_blocks;

	output reg gg;
	output reg just_fell;

	always @(posedge clock)
	begin
		gg <= 0;
		just_fell <= 0;
		if (reset)
			begin
				block <= 9'b000100001;
				fallen_blocks <= 201'd0;
			end
		else if(init_block)
			begin
				if(fallen_blocks[9'd1] != 1'd1)
					block <= 9'b000100001;
				else
					gg <= 1'd1;
			end
		else if(translate_down)
			begin
				// check collision with fallen and implicitly check collision with bottom
				if(fallen_blocks[block[4:0] * 10 + block[8:5]] != 1'd1)
					block[4:0] <= block[4:0] + 1'd1;
				else
					begin
						fallen_blocks[(block[4:0] - 1) * 10 + block[8:5]] <= 1'd1;
						just_fell <= 1'd1;
					end
			end
		else if(translate_left)
			begin
				if(block[8:5] != 4'd1)
					block[8:5] <= block[8:5] - 1;
			end
		else if(translate_right)
			begin
				if(block[8:5] != 4'd10)
					block[8:5] <= block[8:5] + 1;
			end
	end
endmodule
