module uart_data_tx_tb();

	reg Clk;
	reg Rst_n;
	reg [DATA_WIDTH - 1 : 0] data;
	reg send_en;
	reg [2:0] Baud_Set;
	wire uart_tx;
	wire Tx_Done;
	wire uart_state;

	//----Code starts here: integrated by Robei-----
		parameter DATA_WIDTH = 56;
		parameter MSB_FIRST = 1;
	/*
		initial Clk = 1;
		always #1 Clk = !Clk;
		
		initial begin
			Rst_n = 0;
			data = 0;
			send_en = 0;
			#201;
			Rst_n = 1;
			#2000;
			data = 32'h12344567;
			send_en = 1;
			#20;
			send_en = 0;
	
			#200000;
			$finish;		
		end
	*/
	
		initial Clk = 1;
		always #10 Clk = !Clk;
		
		initial begin
			Rst_n = 0;
			data = 0;
			send_en = 0;
			#201;
			Rst_n = 1;
			#200;
			data = 56'h01234567012345;
			send_en = 1;
			#20;
			send_en = 0;
			#20;
			@(posedge Tx_Done);
			#1;
			data = 56'h12345678123456;
			send_en = 1;
			#20;
			send_en = 0;
			#20;
			@(posedge Tx_Done);
			#1;	
			#100000;
			data = 56'h23456789234567;
			#200;
			send_en = 1;
			#20;
			send_en = 0;
			#20;
			@(posedge Tx_Done);
			#1;
			#2000;
			$finish;		
		end
	initial begin
		$dumpfile ("E:/CodeFile/Chusai/农业机器人/Code/Simulations/uart_data_tx/uart_data_tx_tb.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	uart_data_tx uart_data_tx1(
		.Clk(Clk),
		.Rst_n(Rst_n),
		.data(data),
		.send_en(send_en),
		.Baud_Set(3'd4),
		.uart_tx(uart_tx),
		.Tx_Done(Tx_Done),
		.uart_state(uart_state));

endmodule    //uart_data_tx_tb

