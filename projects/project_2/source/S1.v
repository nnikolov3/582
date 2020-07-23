`timescale 1 ns/10 ps

module S1 (output reg Y1, output reg [1:0] state1,
          input wire clk, reset, x1);
  
   reg [1:0]         current_state, next_state;
  
   parameter state00 = 2'b00;
   parameter state01 = 2'b01;
   parameter state10 = 2'b10;
   parameter state11 = 2'b11;
   // *********************************
   // Memory block
   // ********************************
   always @ (posedge clk or negedge reset)
     begin: STATE_MEMORY
        if (!reset)
          current_state <= state00;
        else
          current_state <= next_state;
     end
   // ********************************
   // Next State
   // ********************************
   always @ (current_state or x1)
     begin: NEXT_STATE_LOGIC
        case (current_state)
          state00: 
            if (x1 == 1'b1)
            next_state = state01;
          else
            next_state = state00;
          state01: 
            if (x1 == 1'b1)
            next_state = state10;
          else
            next_state = state00;
          state10: 
            if (x1 == 1'b1)
            next_state = state11;
          else
            next_state = state00;
          state11:
             next_state = state00;
          default: next_state = state00;
        endcase // case (current_state)
     end 
   // ********************************
   // Output Logic
   // ********************************
   always @ (current_state or x1)
     begin : OUTPUT_LOGIC
        case (current_state)
          state00:
              Y1 = 1'b0;
          state01:
            if (x1 == 1'b0)
              Y1 = 1'b1;
            else
              Y1 = 1'b0;
          state10:
            if (x1 == 1'b0)
              Y1 = 1'b1;
            else
              Y1 = 1'b0;
          state11:
              Y1= 1'b1;
          default: Y1 = 1'b0;
        endcase // case (current_state)
     end
   
   always @ (current_state or x1)
     begin
        state1 = current_state;
     end 

endmodule // S1

