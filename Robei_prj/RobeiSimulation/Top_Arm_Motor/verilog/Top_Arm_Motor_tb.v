module Top_Arm_Motor_tb();

	reg Clk;
	reg Rst_n;
	reg [2:0] baud_set;
	wire uart_rx;
	wire arm_uart_tx;
	wire motor_i2c_sclk;
	wire motor_i2c_sdat;
	reg EN;

	//----Code starts here: integrated by Robei-----
		    wire Tx_Done;    
		    wire uart_tx_t;
		    assign uart_rx = uart_tx_t;
		    
		    reg send_en;
		    
		    pullup PUP(motor_i2c_sdat);
		    
			initial Clk = 1;
			always #10 Clk = ~Clk;
			
			reg [79:0] test_data;
			
			
			initial begin
			   Rst_n = 0;
				baud_set = 4;
			   #201;
			   Rst_n = 1;
				EN=1;
		  		 #200;
	
			   test_data = 80'h55_A5_00_00_80_00_00_00_00_F0;		//模拟机械臂的指令
			   
			   send_en = 1;
			   #20;
			   send_en = 0;
	
	
			   @(posedge Top_Arm_Motor1.arm_tx_done);
	
	
		
			   #20;
			   test_data = 80'h55_A5_34_04_35_05_06_07_08_F0;				//模拟电机的指令
			   send_en = 1;
			   #20;
			   send_en = 0;
	
			  @(posedge Top_Arm_Motor1.i2c_control_motor_plus3.RW_Done);
			   #20;
	
	
			   $finish;
			end
	initial begin
		$dumpfile ("E:/CodeFile/Chusai/Chusai_code1/Top_Arm_Motor/Top_Arm_Motor_tb.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	Top_Arm_Motor Top_Arm_Motor1(
		.Clk(Clk),
		.Rst_n(Rst_n),
		.baud_set(baud_set),
		.uart_rx(uart_rx),
		.arm_uart_tx(arm_uart_tx),
		.motor_i2c_sclk(motor_i2c_sclk),
		.motor_i2c_sdat(motor_i2c_sdat),
		.Arm_Motor_EN(EN));

	uart_data_tx uart_data_tx2(
		.Clk(Clk),
		.Rst_n(Rst_n),
		.data(test_data),
		.send_en(send_en),
		.Baud_Set(baud_set),
		.uart_tx(uart_tx_t),
		.Tx_Done(Tx_Done),
		.uart_state( ),
		.ARM_EN(EN));

endmodule    //Top_Arm_Motor_tb

