`include "booth_multiplier.v"
module Booths_Multiplier_tb ; 
	reg clk ; 
	reg start; 
	reg [15:0] data_in ;
	wire done ; 
	wire[1:0] temp;
 
	BOOTH booth_dp(ldA, ldQ, ldM, clrA, clrQ, clrff, sftA, sftQ, addsub, data_in, clk, qm1, eqz); 
	controller booth_cp(ldA, clrA, sftA, ldQ, clrQ, sftQ, ldM, clrff, addsub, start, decr, ldcnt, done, clk, q0, qm1,eqz);

	initial 
		begin
			clk  = 1'b0 ;
			start = 1'b1;
		end 
	always 
		#5 clk = ~ clk ; 		// Clk of Time period 10 Time units. 
	initial 
		begin
            #10 data_in=16'd35;
            #20 data_in=16'd30;
		end 
		
	initial 
		begin 
			$dumpfile ("Booths.vcd") ; 
			$dumpvars (0, Booths_Multiplier_tb) ; 
			
			$monitor ($time , " | M: %d | Z: %d | A: %d |  Q: %b | Q[-1]: %b | ISZERO: %b | DONE: %b |",
					booth_dp.M, booth_dp.Z, booth_dp.A, booth_dp.Q, booth_cp.qm1, booth_dp.eqz, done) ; 
			#1000 $finish ;
		end
endmodule