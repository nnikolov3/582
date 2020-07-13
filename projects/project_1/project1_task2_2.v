// *********************************
// Project 1
// ECE582
// Nikolay Nikolov
// Summer 2020
// Task 2_1
// *********************************
// Main module
// *********************************
module project1_task2_1 (output wire f,
			 input wire 	  a,b,c,d,clk);
   // Combinational Logic
   wire 					  h, g, n , j, k, m;
   always @ (a, b, c, d, j)
     begin
	h = ~(a | b); // NOR gate
	g = b & c;  // XOR gate
	n = ~(c & d); // NAND
	j = n ^ m ; // OR
	f = m;
     end
   // Connect to Mux
   dff U1 (.D(j), .Q(k), .Qn(k),.CLK(clk));
   m2to1 U2 (.F(m), .H(h), .G(g), .SEL(k));

endmodule // project1_task2_1
// ********************************
// *********************************
// Flip Flop
// *********************************
// verilator lint_off DECLFILENAME 
module dff ( output reg Q, Qn,
		   input wire CLK, D);
// verilator lint_on DECLFILENAME 
   always @ (posedge CLK)
     begin
	Q <= D;
	Qn <= ~D;
     end
endmodule // dflipflop

// **********************************
// **********************************
// Mux 2to1
// **********************************
module m2to1( H, G, SEL, F);
   input wire H, G, SEL;
   output reg F;

   always @(H or G or SEL)
     begin
	if(SEL) 
	  F= G;
	else
	  F=H;
     end
endmodule
// *********************************
