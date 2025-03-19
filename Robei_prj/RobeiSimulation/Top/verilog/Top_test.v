module Top_test();

	reg Clk;
	reg Rst_n;
	reg i_echo;
	reg uart_rx;
	wire LCD_CLK;
	wire MOSI;
	wire LCD_RES;
	wire LCD_DC;
	wire LCD_BLK;
	wire arm_uart_tx;
	wire Beeeee;
	wire MOTOR__sclk;
	wire MOTOR_sdat;
	wire o_trig;
	wire LM75A_SCL;
	wire LM75A_SDA;
	wire ARM_TX_EN;

	//----Code starts here: integrated by Robei-----
		    wire Tx_Done;    
		    wire uart_tx_t;	  
			wire uart_tx_t;
		    assign uart_rx = uart_tx_t;
	
		    	    
		    pullup PUP(LM75A_SCL);
		    pullup PUP(LM75A_SDA);
		    pullup PUP(MOTOR__sclk);
		    pullup PUP(MOTOR__sdat);
		    
			initial Clk = 1;
			always #10 Clk = ~Clk;		
			reg [79:0] test_data;
		
			initial begin
			   Rst_n = 0;
	
			   #201;
			   Rst_n = 1;
		  		 #200;
			   test_data = 80'h55_A5_00_00_11_00_00_00_00_F0;		//模拟机械臂的指令		   
			   send_en = 1;
			   #20;
			   send_en = 0;
			   @(posedge Top1.Top_Arm_Motor3.Arm4.Tx_Done);
	
			   #20;
			   test_data = 80'h55_A5_68_04_35_05_06_07_08_F0;				//模拟电机的指令
			   send_en = 1;
			   #20;
			   send_en = 0;
	
			  @(posedge Top1.Top_Arm_Motor3.i2c_control_motor_plus3.RW_Done);
			   #20;
	
	
	
			   $finish;
			end
	
	
	
	initial begin
		$dumpfile ("E:/CodeFile/Fusai/BAJIAOBAN/Top_Final/RobeiSimulation/Top/Top_test.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	Top Top1(
		.Clk(Clk),
		.Rst_n(Rst_n),
		.i_echo(i_echo),
		.uart_rx(uart_rx),
		.LCD_CLK(LCD_CLK),
		.MOSI(MOSI),
		.LCD_RES(LCD_RES),
		.LCD_DC(LCD_DC),
		.LCD_BLK(LCD_BLK),
		.arm_uart_tx(arm_uart_tx),
		.Beeeee(Beeeee),
		.MOTOR__sclk(MOTOR__sclk),
		.MOTOR_sdat(MOTOR_sdat),
		.o_trig(o_trig),
		.LM75A_SCL(LM75A_SCL),
		.LM75A_SDA(LM75A_SDA),
		.ARM_TX_EN(ARM_TX_EN));

	uart_data_tx uart_data_tx2(
		.Clk(Clk),
		.Rst_n(Rst_n),
		.data(test_data),
		.send_en(send_en),
		.Baud_Set(3'd4),
		.uart_tx(uart_tx_t),
		.Tx_Done(Tx_Done),
		.uart_state( ));

endmodule    //Top_test

