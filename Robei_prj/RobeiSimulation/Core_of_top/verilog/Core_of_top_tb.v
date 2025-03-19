module Core_of_top_tb();

	reg Read_temp_ok;
	reg [10:0] Temp_data;
	reg [15:0] CSB_data;
	wire LM75A_EN;
	wire BUZZER_EN;
	reg Clk;
	reg Rst_n;

	//----Code starts here: integrated by Robei-----
		always #10 Clk = ~Clk;
		
		initial begin
	        Clk = 1;
		    Rst_n = 0;
		    Read_temp_ok = 0;		
			Temp_data = 0;		
			CSB_data= 0;			
		    #200;
			Rst_n = 1;
			#200;
			Read_temp_ok = 1;		
			Temp_data = 11'd35;		
			#200;
			CSB_data = 14'd100;
			Read_temp_ok = 1;		
			Temp_data = 11'd40;	
			#200;
			CSB_data = 14'd30;
			Read_temp_ok = 1;		
			Temp_data = 11'd20;	
		
	
		    #2000;
		    $finish;
		end
	
	
	
	
	initial begin
		$dumpfile ("E:/CodeFile/Fusai/BAJIAOBAN/Top_Final/RobeiSimulation/Core_of_top/Core_of_top_tb.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	Core_of_top Core_of_top1(
		.Read_temp_ok(Read_temp_ok),
		.Temp_data(Temp_data),
		.CSB_data(CSB_data),
		.LM75A_EN(LM75A_EN),
		.BUZZER_EN(BUZZER_EN),
		.Clk(Clk),
		.Rst_n(Rst_n));

endmodule    //Core_of_top_tb

