// *********************************
// Project 1
// ECE582
// Nikolay Nikolov
// Summer 2020
// Task 2_1
// *********************************
// Main module
// *********************************
module top(output wire f,
			 input wire a,b,c,d,clk);
   // Combinational Logic
   dff U1 (.D(j), .Q(k), .Qn(k),.CLK(clk));
   m2to1 U2 (.F(m), .H(h), .G(g), .SEL(k));

endmodule 
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
module m2to1( input H, G, sel,
		output reg F);
   always @(H or G or sel)
	begin
     F = sel ? a : b;
	end
endmodule
// *********************************
// Combinational Logic
// ********************************
module combo ( input a , b, c, d
		output reg f);
wire h, g, n, j, k;

	always @ (a or b or c or d) 
	begin
	
	h = ~(a | b); // NOR gate
	g = b ^ c;  // XOR gate
	n = ~(c & d); // NAND
	j = n | m ; // OR
	f = m;
	end
endmodule
