`timescale 1 ns/10 ps

module top (output wire Y1, 
            output wire       Y2, 
            output wire [1:0] state1,
            output wire [1:0] state2,
            input wire       clk, reset, x);

   S1 U1 (.Y1(Y1),.state1(state1),.clk(clk), .reset(reset), .x1(x));
   S2 U2 (.Y2(Y2),.state2(state2),.clk(clk), .reset(reset), .x2(x));

endmodule 
