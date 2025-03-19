module LM75A_drive_tb();

	reg Clk;
	reg Rst_n;
	reg LM75A_EN;
	wire [10:0] Temp_data;
	wire Read_temp_en;

	//----Code starts here: integrated by Robei-----
		pullup PUP(LM75A_drive1.LM75A_i2c_control2.i2c_sdat);
		
		localparam 
			WR   = 6'b000001,   //д����
			STA  = 6'b000010,   //��ʼλ����
			RD   = 6'b000100,   //������
			STO  = 6'b001000,   //ֹͣλ����
			ACK  = 6'b010000,   //Ӧ��λ����
			NACK = 6'b100000;   //��Ӧ������
	
	
		always #10 Clk = ~Clk;
		
		initial begin
	        Clk = 1;
		    Rst_n = 0;
		    LM75A_EN = 0;		
		    #200;
			Rst_n = 1;
			#200;
			LM75A_EN = 1;
	//		LM75A_drive1.LM75A_i2c_control2.LM75A_i2c_bit_shifter2.Rx_DATA=00001111;		
			@ (posedge Read_temp_en);
	
		    #2000;
		    $finish;
		end
	
	
	
	
	
	
	initial begin
		$dumpfile ("E:/CodeFile/Chusai/LM75A/LM75A_drive_tb.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	LM75A_drive LM75A_drive1(
		.Clk(Clk),
		.Rst_n(Rst_n),
		.LM75A_EN(LM75A_EN),
		.Temp_data(Temp_data),
		.Read_temp_en(Read_temp_en));

endmodule    //LM75A_drive_tb

