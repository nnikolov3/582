`timescale 1 ns/10 ps

module tb_top();
   wire Y1,Y2;
   reg  clk, reset, x;
   wire [1:0] state1,state2;

   top  DUT (.Y1(Y1),.Y2(Y2),.state1(state1),.state2(state2),.clk(clk), .reset(reset), .x(x));

   initial
     begin
        reset = 1'b0;
        #10 reset= 1'b1;
     end

   initial
     begin
        clk= 1'b0;
     end

   always
     begin
        #5 clk= ~clk;
     end

   initial
     begin
           x = 1'b0;
        #9 x = 1'b1;
        #9 x = 1'b1;
        #9 x = 1'b1;
        #9 x = 1'b1;
        #9 x = 1'b0;
        #9 x = 1'b1;
        #9 x = 1'b0;
        #9 x = 1'b1;
        #9 x = 1'b1;
        #9 x = 1'b1;
        #9 x = 1'b1;
        #9 x = 1'b1;
        #9 x = 1'b0;
        #9 x = 1'b0;
        #9 x = 1'b0;
        #9 x = 1'b1;
        #9 x = 1'b0;
        #9 x = 1'b1;
       
     end
  
  initial 
    begin
      $display(" x     state1     Y1      state2    Y2");
      $monitor("%2b %2b %2b  %2b %2b", x ,state1, Y1, state2, Y2);
    end 
  initial
    begin
  #500 $finish;
    end 
  
endmodule // tb_S
