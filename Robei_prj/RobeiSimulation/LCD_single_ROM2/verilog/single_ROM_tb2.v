module single_ROM_tb();

	reg clk;
	reg [ADDR_WIDTH ] addr;
	wire [DATA_WIDTH ] q;

	//----Code starts here: integrated by Robei-----
	parameter DATA_WIDTH = 8;
	parameter ADDR_WIDTH = 19;
	
	initial
	begin
	clk=0;
	addr<=0;
	
	
	
	#100;
	$finish;
	end
	
	always @(posedge clk) begin
	
			addr <= addr + 1'b1;
	
	end
	
	
	always #1 clk=~clk;    //时钟周期为2ns
	
	//ROM ROM_test(.addr(addr),.clk(clk),.q(q) );
	
	//ROM ROM_test(.rst(rst),.clk(clk),.o_sine(o_sine),.o_squ(o_squ),.o_tri(o_tri) );
	
	
	
	
	
	
	initial begin
		$dumpfile ("E:/CodeFile/Fusai/BAJIAOBAN/Top_Final/RobeiSimulation/single_ROM2/single_ROM_tb.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	single_ROM2 single_ROM21(
		.clk(clk),
		.addr(addr),
		.q(q));

endmodule    //single_ROM_tb

