/*
  full_adder.v
  Name: Andrue Peters
  Date: 7/16/19

  Inputs: a, b, cin
  Outputs: sum, cout
  Description: Full adder module derived from truth table.

  Credit: "Computer Arithmetic and Verilog HDL Fundamentals" by Joseph Cavanagh
*/

// dataflow full adder
module full_adder (a, b, cin, sum, cout);

// list all inputs and outputs
input a, b, cin;
output sum, cout;

// define wires
wire a, b, cin;
wire sum, cout;

//continuous assign
assign sum = (a ^ b) ^ cin;
assign cout = cin & (a ^ b) | (a & b);

endmodule
