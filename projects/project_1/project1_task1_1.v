// ************************************************
// Project 1
// ECE582
// Nikolay Nikolov
// Summer 2020
// Task 1_C1
// ************************************************

module project1_task1_1 (output wire a,
		 input wire x1, x2, y1, y2);

   // Internal Nets
   wire 		    m0, m1, m2, m3;
   wire 		    a0, a1;
   // AND
   assign m0 = x1 & y1;
   assign m2 = x2 & y2;
   // NOR
   assign m1 = ~(x1 | y1);
   assign m3 = ~(x2 | y2);
   // OR
   assign a0 = m0 | m1;
   assign a1 = m2 | m3;
   // Out
   assign a = a1 | a0;

endmodule // project1_task1_1
