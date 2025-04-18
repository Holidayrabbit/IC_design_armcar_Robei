module sonic(
	sys_clk,
	rst_n,
	Echo,
	trig,
	BEEP);

	//---Ports declearation: generated by Robei---
	input sys_clk;
	input rst_n;
	input Echo;
	output trig;
	output BEEP;

	wire sys_clk;
	wire rst_n;
	wire Echo;
	reg trig;
	reg BEEP;

	//----Code starts here: integrated by Robei-----
		    parameter SYS_CLK=33_333_333;
		    parameter CLK_17KHz=17_000;
		    parameter CNT_300MS=10_000_000;
		    parameter CNT_15US=500;
		    localparam CNT_17K=SYS_CLK/CLK_17KHz;
		    
		    wire nege_Echo;
		    wire pose_Echo;
		
		    reg  Echo_delay0;
		    reg  Echo_delay1;
		    reg [23:0] cnt_300ms;
		    reg [10:0] cnt_17K;
		    (* mark_debug=1 *)reg cnt_17K_en;
		    reg [15:0] data_length;
		    
		    assign pose_Echo = (~Echo_delay1&&Echo_delay0);
		    assign nege_Echo = Echo_delay1&&(!Echo_delay0);
		    
		    //Echo_delay
		    always @(posedge sys_clk or negedge rst_n)begin
		        if(!rst_n)begin
		            Echo_delay0<=0;
		            Echo_delay0<=1;
		        end
		        else begin
		            Echo_delay0<=Echo;
		            Echo_delay1<=Echo_delay0;
		        end         
		    end
		    
		    //cnt_300ms
		    always@ (posedge sys_clk or negedge rst_n)begin
		        if(!rst_n)
		            cnt_300ms<=24'b0;
		        else if(cnt_300ms==CNT_300MS-1)
		            cnt_300ms<=24'b0;
		        else
		            cnt_300ms<=cnt_300ms+1;
		    end
		    
		    //trig
		    always@ (posedge sys_clk or negedge rst_n)begin
		        if(!rst_n)
		            trig<=0;
		        else if(cnt_300ms<=CNT_15US)
		            trig<=1;
		        else 
		            trig<=0;
		    end
		    
		    //cnt_17K_en
		    always@(posedge sys_clk or negedge rst_n)begin
		        if(!rst_n)
		            cnt_17K_en<=0;
		        else if(pose_Echo)
		            cnt_17K_en<=1;
		        else if(nege_Echo)
		            cnt_17K_en<=0;
		    end
		    
		    //cnt_17K
		    always@ (posedge sys_clk or negedge rst_n)begin
		        if(!rst_n)
		            cnt_17K<=11'b0;
		        else if(cnt_17K_en)
		            if(cnt_17K==CNT_17K)
		                cnt_17K<=11'b0;
		            else
		                cnt_17K<=cnt_17K+1;
		        else
		            cnt_17K<=11'b0;
		    end
		    
		    //data_r
		    always@ (posedge sys_clk or negedge rst_n)begin
		        if(!rst_n)
		            data_length<=10'b0;
		        else if(cnt_17K_en)
		            if(cnt_17K==CNT_17K)
		                data_length<=data_length+1;
		            else
		                data_length<=data_length;
		        else if(cnt_300ms==24'd1)
		            data_length<=10'b0;   
		        else
		            data_length<=data_length;                  
		    end
				    //BEEP
			    always@ (posedge sys_clk or negedge rst_n)begin
			        if(!rst_n)
			            BEEP<=1'b0;
			        else if(data_length<=6)
		                BEEP<=1'b1;
			        else 
			            BEEP<=1'b0; 
		            
			    end
		
		  /*  
		    //data
		    always@ (posedge sys_clk or negedge rst_n)begin
		        if(!rst_n)begin
		            data<=0;
		
		        end
		        else if(cnt_300ms==CNT_300MS-1)begin
		            data<=data_length;
		
		        end
		        else begin
		            data<=data;
		
		        end 
		         
		    end
		*/
endmodule    //sonic

