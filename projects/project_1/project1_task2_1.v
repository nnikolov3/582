// *********************************
// Project 1
// ECE582
// Nikolay Nikolov
// Summer 2020
// Task 2_1
// *********************************
// Top module
// *********************************
module top(output reg f,
    input wire a,b,c,d,clk);
// Combinational Logic
wire g, h, n, j, k;
combo U1 (.a(a), .b(b), .c(c), .d(d), .f(f), .h(h), .g(g), .n(n), .j(j));
dff U2 (.D(j), .Q(k),.clk(clk));
m2to1 U3 (.F(f), .H(h), .G(g), .sel(k));

endmodule 
// *********************************
// Flip Flop
// *********************************
// verilator lint_off DECLFILENAME 
module dff ( output reg Q, Qn,
    input wire clk, D);
// verilator lint_on DECLFILENAME 
always @ (posedge clk)
begin
    Q <= D;
    Qn <= ~D;
end
endmodule // dflipflop

// **********************************
// Mux 2to1
// **********************************
module m2to1( input H, G, sel,
    output reg F);
always @(H or G or sel)
begin
    F = sel ? G : H;
end
endmodule
// *********************************
// Combinational Logic
// ********************************
module combo ( input wire a , b, c, d ,f,
                output reg h, g, n, j);

always @ (a or b or c or d or f) 
begin

    h = ~(a | b); // NOR gate
    g = b ^ c;  // XOR gate
    n = ~(c & d); // NAND
    j = n | f ; // OR
end
endmodule
