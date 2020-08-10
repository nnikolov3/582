`timescale 1 ns/10 ps

module tb_S2 ();
   wire Y2;
   reg  clk, reset, x2;
   wire [1:0] state2;

   S2 DUT (.Y2(Y2),.state2(state2),.clk(clk), .reset(reset), .x2(x2));

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
            x2 = 1'b0;
        #9 x2 = 1'b1;
        #9 x2 = 1'b1;
        #9 x2 = 1'b1;
        #9 x2 = 1'b1;
        #9 x2 = 1'b0;
        #9 x2 = 1'b1;
        #9 x2 = 1'b0;
        #9 x2 = 1'b1;
        #9 x2 = 1'b1;
        #9 x2 = 1'b1;
        #9 x2 = 1'b1;
        #9 x2 = 1'b1;
        #9 x2 = 1'b0;
        #9 x2 = 1'b0;
        #9 x2 = 1'b0;
        #9 x2 = 1'b1;
        #9 x2 = 1'b0;
        #9 x2 = 1'b1;
       
     end
  
  initial 
    begin
      $display(" state2 x2 Y2");
      $monitor("%2b, %2b %2b", state2, x2, Y2);
    end 
  initial
    begin
       
  #500 $finish;
    end 
  
endmodule // tb_S
