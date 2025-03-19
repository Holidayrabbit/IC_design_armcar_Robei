module i2c_bit_shifter_tb();

	reg Clk;
	reg Rst_n;
	reg [5:0] Cmd;
	reg Go;
	reg [7:0] Tx_DATA;
	wire [7:0] Rx_DATA;
	wire Trans_Done;
	wire ack_o;
	wire i2c_sclk;
	wire i2c_sdat;

	//----Code starts here: integrated by Robei-----
		pullup PUP(i2c_sdat);
		
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
		    Cmd = 6'b000000;
		    Go = 0;
		    Tx_DATA = 8'd0;
		    #2001;
			Rst_n = 1;
			#2000;
			
			//д���ݲ�������EEPROM������B1��ַд����DA
			//��һ�Σ���ʼλ+EEPROM������ַ��7λ��+д����1λ��
			Cmd = STA | WR;
		    Go = 1;
		    Tx_DATA = 8'hA0 | 8'd0;//д����
		    @ (posedge Clk);
	        #1;
		    Go = 0;
		    @ (posedge Trans_Done);
		    #200;
		    
		    //�ڶ��Σ�д8λEEPROM�ļĴ�����ַ
		    Cmd = WR;
		    Go = 1;
		    Tx_DATA = 8'hB1;//д��ַB1
		    @ (posedge Clk);
		    #1;
		    Go = 0;
		    @ (posedge Trans_Done);
		    #200;
		    
		    //�����Σ�д8λ���� + ֹͣλ
		    Cmd = WR | STO;
		    Go = 1;
		    Tx_DATA = 8'hda;//д����DA
		    @ (posedge Clk);
		    #1;
		    Go = 0;
		    @ (posedge Trans_Done);
		    #200;
		    
		    #5000000; //����ģ�͵����β���ʱ����
		    //�����ݲ�������EEPROM������B1��ַ������
		    //��һ�Σ���ʼλ+EEPROM������ַ��7λ��+д����1λ��
			Cmd = STA | WR;
		    Go = 1;
		    Tx_DATA = 8'hA0 | 8'd0;//д����
		    @ (posedge Clk);
		    #1;
		    Go = 0;
		    @ (posedge Trans_Done);
		    #200;
		    
		    //�ڶ��Σ�д8λEEPROM�ļĴ�����ַ
		    Cmd = WR;
		    Go = 1;
		    Tx_DATA = 8'hB1;//д��ַB1
		    @ (posedge Clk);
		    #1;
		    Go = 0;
		    @ (posedge Trans_Done);
		    #200;
		    
		    //�����Σ���ʼλ+EEPROM������ַ��7λ��+������1λ��
			Cmd = STA | WR;
		    Go = 1;
		    Tx_DATA = 8'hA0 | 8'd1;//������
		    @ (posedge Clk);
		    #1;
		    Go = 0;
		    @ (posedge Trans_Done);
		    #200;
		    
		    //���ĴΣ���8λ���� + ֹͣλ
		    Cmd = RD | STO;
		    Go = 1;
		    @ (posedge Clk);
		    #1;
		    Go = 0;
		    @ (posedge Trans_Done);
		    #200;
		    
		    #2000;
		    $finish;
		end
	initial begin
		$dumpfile ("E:/CodeFile/Chusai/Simulations/i2c_bit_shifter/i2c_bit_shifter_tb.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	i2c_bit_shifter i2c_bit_shifter1(
		.Clk(Clk),
		.Rst_n(Rst_n),
		.Cmd(Cmd),
		.Go(Go),
		.Tx_DATA(Tx_DATA),
		.Rx_DATA(Rx_DATA),
		.Trans_Done(Trans_Done),
		.ack_o(ack_o),
		.i2c_sclk(i2c_sclk),
		.i2c_sdat(i2c_sdat));

	M24LC04B M24LC04B2(
		.A0(0),
		.A1(0),
		.A2(0),
		.WP(0),
		.SCL(i2c_sclk),
		.RESET(Rst_n),
		.SDA(i2c_sdat));

endmodule    //i2c_bit_shifter_tb

