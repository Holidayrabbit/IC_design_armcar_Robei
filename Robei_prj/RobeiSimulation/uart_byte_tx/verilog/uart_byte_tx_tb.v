module uart_byte_tx_tb();

	reg clk;
	reg reset_n;
	reg [7:0] data_byte;
	reg send_en;
	reg [2:0] baud_set;
	wire uart_tx;
	wire tx_done;
	wire uart_state;

	//----Code starts here: integrated by Robei-----
			localparam CLK_PERIOD = 20;
	
		initial clk = 1;
		always#(CLK_PERIOD/2)clk = ~clk;
		
		initial begin
			reset_n = 1'b0;
			data_byte = 8'd0;
			send_en = 1'd0;
			baud_set = 3'd4;
			#(CLK_PERIOD*500 + 1 )
			reset_n = 1'b1;
			#(CLK_PERIOD*50);
	    
	    //send first byte
			data_byte = 8'haa;
			send_en = 1'd1;
			#CLK_PERIOD;
			send_en = 1'd0;
	
			@(posedge tx_done)
			#(CLK_PERIOD*5000);
	    
	    //send second byte
			data_byte = 8'h55;
			send_en = 1'd1;
			#CLK_PERIOD;
			send_en = 1'd0;
	
			@(posedge tx_done)
			#(CLK_PERIOD*5000);
			$finish;	
		end
	
	
	
	
	initial begin
		$dumpfile ("E:/CodeFile/Chusai/Simulations/uart_byte_tx/uart_byte_tx_tb.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	uart_byte_tx uart_byte_tx1(
		.clk(clk),
		.reset_n(reset_n),
		.data_byte(data_byte),
		.send_en(send_en),
		.baud_set(baud_set),
		.uart_tx(uart_tx),
		.tx_done(tx_done),
		.uart_state(uart_state));

endmodule    //uart_byte_tx_tb

