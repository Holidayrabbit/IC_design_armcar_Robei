module arm_test();

	reg Clk;
	reg Rst_n;
	reg [7:0] in_id;
	reg [2:0] Baud_Set_in;
	wire uart_tx;
	wire Tx_Done;
	wire uart_state;
	reg in_cmd;

	//----Code starts here: integrated by Robei-----
		parameter DATA_WIDTH = 80;
		parameter MSB_FIRST = 1;
	
		initial Clk = 1;
		always #10 Clk = !Clk;
		
		initial begin
			Rst_n = 0;
			in_id = 0;
			in_cmd = 0;
			Baud_Set_in = 3'd4;
			#201;
			Rst_n = 1;
			#200;
			in_id = 8'h2;
			in_cmd = 1'b1;
			Baud_Set_in = 3'd4;
			#20;
			in_id =8'b00000000;
			@(posedge Tx_Done);
			#20000;
			in_id = 8'h2;
			in_cmd = 1'b1;
			#20;
			in_id =8'b00000000;
			@(posedge Tx_Done);
			#20;
			in_id = 8'h9;
			in_cmd = 1'b0;
			#20;
			in_id =8'b00000000;
			#20000;
			in_id = 8'h2;
			in_cmd = 1'b0;
			#20;
			in_id =8'b00000000;
			@(posedge Tx_Done);
			#20;
			$finish;		
		end
	initial begin
		$dumpfile ("E:/CodeFile/Fusai/BAJIAOBAN/Top_Final/RobeiSimulation/Arm/arm_test.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	Arm Arm1(
		.Clk(Clk),
		.Rst_n(Rst_n),
		.in_id(in_id),
		.Baud_Set_in(Baud_Set_in),
		.uart_tx(uart_tx),
		.Tx_Done(Tx_Done),
		.uart_state(uart_state),
		.in_cmd(in_cmd));

endmodule    //arm_test

