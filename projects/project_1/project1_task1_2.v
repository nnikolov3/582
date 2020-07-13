//////////////////////////////////////////////////
// Project 1
// ECE582
// Nikolay Nikolov
// Summer 2020
// Task 1_C2
////////////////////////////////////////////////

module project1_task1_2 (output wire b,
		input wire x1, x2, y1, y2);

<<<<<<< HEAD
// Internal Nets
wire 			    m0, m1, m2, m3;
// OR
assign m0 = x1 | y1 | x2 | y2;
assign m1 = ~x1 | ~y1 | x2 | y2;
assign m2 = x1 | ~y1 | ~x2 | y2;
assign m3 = ~x1 | ~y1 | ~x2 | y2;
// Out
assign b = m0 | m1 | m2 | m3;
=======
   // Internal Nets
   wire 			    m0, m1, m2, m3;
   // OR
   assign m0 = x1 | y1 | x2 | y2;
   assign m1 = ~ x1 ~ | ~ y1 | x2 | y2);
   assign m2 = x1 | ~ y1 | ~ x2 | y2;
   assign m3 = ~ x1 | ~ y1 | ~ x2 | y2;
   // Out
   assign b = m0 | m1 | m2 | m3;
>>>>>>> 9cc6456a7fa6a3edc3cd00909b3d6a35cefdbbed

endmodule // project1_task1_2
