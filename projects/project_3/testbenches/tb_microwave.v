`timescale 1 ns/10 ps

module tb_microwave();
   reg  clk, sys_reset, reset, closeDoor, startOven, done;
   wire Start, Close, Heat, Error;

   microwave DUT (
                  .clk(clk),
                  .sys_reset(sys_reset), 
                  .reset(reset), 
                  .closeDoor(closeDoor), 
                  .startOven(startOven), 
                  .done(done),
                  .Start(Start),
                  .Close(Close),
                  .Heat(Heat),
                  .Error(Error)
                  );

   initial
     begin
        #20 sys_reset = 1'b1;
        #20 sys_reset = 1'b0;
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
        #40 closeDoor = 1'b0; startOven = 1'b0; reset = 1'b0; done = 1'b0;
        #40 closeDoor = 1'b0; startOven = 1'b0; reset = 1'b0; done = 1'b0;
        #40 closeDoor = 1'b1; startOven = 1'b0; reset = 1'b0; done = 1'b0;
        #40 closeDoor = 1'b1; startOven = 1'b1; reset = 1'b0; done = 1'b0;
        #40 closeDoor = 1'b1; startOven = 1'b1; reset = 1'b0; done = 1'b1; 
        #40 closeDoor = 1'b1; startOven = 1'b1; reset = 1'b0; done = 1'b0;
        #40 closeDoor = 1'b1; startOven = 1'b1; reset = 1'b0; done = 1'b0;
        #40 closeDoor = 1'b0; startOven = 1'b0; reset = 1'b0; done = 1'b0;
        #40 closeDoor = 1'b0; startOven = 1'b1; reset = 1'b0; done = 1'b0; 
        #40 closeDoor = 1'b1; startOven = 1'b1; reset = 1'b1; done = 1'b0;
        #40 closeDoor = 1'b1; startOven = 1'b1; reset = 1'b0; done = 1'b0;
        #40 closeDoor = 1'b0; startOven = 1'b1; reset = 1'b0; done = 1'b0;
        #40 closeDoor = 1'b1; startOven = 1'b1; reset = 1'b0; done = 1'b1;
        #40 closeDoor = 1'b0; startOven = 1'b0; reset = 1'b0; done = 1'b0;
        #40 closeDoor = 1'b0; startOven = 1'b0; reset = 1'b0; done = 1'b0;
        #40 closeDoor = 1'b0; startOven = 1'b1; reset = 1'b0; done = 1'b0;
        #40 closeDoor = 1'b1; startOven = 1'b1; reset = 1'b0; done = 1'b0;
        #40 closeDoor = 1'b1; startOven = 1'b1; reset = 1'b1; done = 1'b0;
        #40 closeDoor = 1'b1; startOven = 1'b1; reset = 1'b1; done = 1'b0;
        #40 closeDoor = 1'b1; startOven = 1'b1; reset = 1'b0; done = 1'b0;
        #40 closeDoor = 1'b0; startOven = 1'b1; reset = 1'b0; done = 1'b0;

     end
  initial 
    begin
       $display(" Start Close Heat Error|       startOven closeDoor reset done ");
       $monitor(" %1b   %1b     %1b     %1b|         %1b    %1b     %1b     %1b ", Start, Close, Heat, Error, startOven, closeDoor, reset, done);
    end
   
  initial
    begin  
       #1000 $finish;
    end 
  
endmodule //tb_microwave
