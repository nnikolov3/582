`timescale 1 ns/10 ps

module microwave(input clk, sys_reset, reset, closeDoor, startOven, done, 
output reg [3:0] States);
   
   reg    Start, Close, Heat, Error;

   always @ (posedge clk)
     begin
        if (sys_reset == 1'b1)
          begin
             {Start, Close, Heat, Error} <= 4'b0000;
          end
        else
          begin
             case ({Start, Close, Heat, Error})
               4'b0000:
                 if (closeDoor) {Start, Close, Heat, Error} <= 4'b0100;
                 else if (startOven) {Start, Close, Heat, Error} <= 4'b1001;
               4'b1001:
                 if (closeDoor) {Start, Close, Heat, Error} <= 4'b1101;
               4'b1101:
                 if (~closeDoor){Start, Close, Heat, Error} <= 4'b1001;
                 else if (reset) {Start, Close, Heat, Error} <= 4'b0100;
               4'b0100:
                 if (~closeDoor){Start, Close, Heat, Error} <= 4'b0000;
                 else if (startOven) {Start, Close, Heat, Error} <= 4'b1100;
               4'b1100:
                 {Start, Close, Heat, Error} <= 4'b1110;
               4'b1110:
                 {Start, Close, Heat, Error} <= 4'b0110;
               4'b0110:
                 if (~closeDoor){Start, Close, Heat, Error} <= 4'b0000;
                 else if (done) {Start, Close, Heat, Error} <= 4'b0100;
               default:
                 {Start, Close, Heat, Error} <= 4'b0000;
             endcase
          end
     end
   always @ (*)
       begin
          States = {Start, Close, Heat, Error};
       end
endmodule // microwave

