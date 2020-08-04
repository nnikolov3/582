`timescale 1 ns/10 ps

module tb_microwave();
   reg  clk, sys_reset, reset, closeDoor, startOven, done;
   wire [3:0] States;

   microwave DUT (
                  .clk(clk),
                  .sys_reset(sys_reset), 
                  .reset(reset), 
                  .closeDoor(closeDoor), 
                  .startOven(startOven), 
                  .done(done),
                  .States(States)
                  );

   initial
     begin
        sys_reset = 1'b0;
        #10 sys_reset = 1'b1;
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
        #9 closeDoor = 1'b1; startOven = 1'b0; reset = 1'b0; done = 1'b0;
        #9 closeDoor = 1'b1; startOven = 1'b1; reset = 1'b0; done = 1'b0;
        #9 closeDoor = 1'b1; startOven = 1'b0; reset = 1'b0; done = 1'b0;
        #9 closeDoor = 1'b1; startOven = 1'b0; reset = 1'b0; done = 1'b0;     
     end
  
  initial 
    begin
       $display(" States closeDoor startOven reset done ");
       $monitor(" %4b  %1b  %1b  %1b  %1b", States, startOven, closeDoor, reset, done);
    end
   
  initial
    begin  
       #500 $finish;
    end 
  
endmodule //tb_microwave
