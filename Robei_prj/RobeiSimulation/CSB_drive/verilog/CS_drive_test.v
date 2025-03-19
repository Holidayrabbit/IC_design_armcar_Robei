module CS_drive_test();

	reg sys_clk;
	reg sys_rst_n;
	reg i_echo;
	wire o_trig;
	wire [15:0] o_s_mm;

	//----Code starts here: integrated by Robei-----
	initial begin
	    sys_clk <= 0;
	    sys_rst_n <= 0;
	    i_echo <= 0;
	    #20
	    sys_rst_n <= 1;
	    #2000
	    i_echo <= 1;
	    #30000
	    i_echo <= 0;
	    $finish;
	end
	
	
	always #10 sys_clk <= ~sys_clk;
	
	
	
	initial begin
		$dumpfile ("E:/CodeFile/Fusai/BAJIAOBAN/Top_Final/RobeiSimulation/CS_100_top/CS_drive_test.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	CSB_drive CSB_drive1(
		.clk(sys_clk),
		.rst_n(sys_rst_n),
		.Echo(i_echo),
		.trig(o_trig),
		.data(o_s_mm));

endmodule    //CS_drive_test

