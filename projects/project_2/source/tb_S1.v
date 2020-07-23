`timescale 1 ns/10 ps

module tb_S1 ();
   wire Y1;
   reg  clk, reset, x1;
   wire [1:0] state1;

   S1 DUT (.Y1(Y1),.state1(state1),.clk(clk), .reset(reset), .x1(x1));

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
            x1 = 1'b0;
        #9 x1 = 1'b1;
        #9 x1 = 1'b1;
        #9 x1 = 1'b1;
        #9 x1 = 1'b1;
        #9 x1 = 1'b0;
        #9 x1 = 1'b1;
        #9 x1 = 1'b0;
        #9 x1 = 1'b1;
        #9 x1 = 1'b1;
        #9 x1 = 1'b1;
        #9 x1 = 1'b1;
        #9 x1 = 1'b1;
        #9 x1 = 1'b0;
        #9 x1 = 1'b0;
        #9 x1 = 1'b0;
        #9 x1 = 1'b1;
        #9 x1 = 1'b0;
        #9 x1 = 1'b1;
       
     end
  
  initial 
    begin
      $display(" state1 x1 Y1");
      $monitor("%2b, %2b %2b", state1, x1, Y1);
    end 
  initial
    begin
       
  #500 $finish;
    end 
  
endmodule // tb_S
