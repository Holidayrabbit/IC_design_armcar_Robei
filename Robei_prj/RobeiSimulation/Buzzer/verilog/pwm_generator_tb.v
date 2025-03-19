module pwm_generator_tb();

	reg Clk;
	reg Rst_n;
	reg pwm_gen_en;
	reg [31:0] counter_arr;
	reg [31:0] counter_ccr;
	wire pwm_out;

	//----Code starts here: integrated by Robei-----
	
		initial Clk = 0;
		always #1 Clk = ~Clk;
		
		initial begin
			Rst_n = 0;
			pwm_gen_en = 0;
			counter_arr = 0;
			counter_ccr = 0;
	
			#20;
			Rst_n = 1;
			#20;
	
			counter_arr = 1000; //��������ź�Ƶ��Ϊ50KHz
			counter_ccr = 400; //�������PWM��ռ�ձ�Ϊ40%
			#20;
			pwm_gen_en = 1;	   //���������Բ���PWM���
			#100000;
	
			counter_ccr = 700; //�������PWM��ռ�ձ�Ϊ70%
			#100000;
			pwm_gen_en = 0;	   //ֹͣ�����Թر�PWM���
	    
			counter_arr = 500; //��������ź�Ƶ��Ϊ100KHz
			counter_ccr = 250; //�������PWM��ռ�ձ�Ϊ50%
			#100000;
			pwm_gen_en = 1;	   //���������Բ���PWM���
			#50000;
			counter_ccr = 100; //�������PWM��ռ�ձ�Ϊ20%
			#50000;
			pwm_gen_en = 0;	   //ֹͣ�����Թر�PWM���
	
			#200;
			$finish;
		end
	
	initial begin
		$dumpfile ("E:/CodeFile/Fusai/BAJIAOBAN/Top_Final/RobeiSimulation/Buzzer/pwm_generator_tb.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	pwm_generator pwm_generator1(
		.Clk(Clk),
		.Rst_n(Rst_n),
		.pwm_gen_en(pwm_gen_en),
		.counter_arr(counter_arr),
		.counter_ccr(counter_ccr),
		.pwm_out(pwm_out));

endmodule    //pwm_generator_tb

