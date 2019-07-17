/*
  adder_ripple4_struc2.v
  Name: Andrue Peters
  Date: 7/16/19

  Inputs: a,    - [3:0] vector
          b,    - [3:0] vector
          cin   - bit

  Outputs: sum  - [3:0] vector
           cout - bit

  Description: A 4-bit ripple carry adder using 4 full_adders.
  Credit: Credit: "Computer Arithmetic and Verilog HDL Fundamentals" by Joseph Cavanagh
*/

// structural 4_bit ripple-carry counter
module adder_ripple4_struc2 (a, b, cin, sum, cout);

input [3:0] a, b;
input cin;

output [3:0] sum;
output cout;

wire [3:0] a, b;
wire cin;
wire [3:0] sum;
wire cout;

wire [3:0] c; // definte internal nets for carries

assign cout = c[3];

full_adder inst0 (
  .a(a[0]),
  .b(b[0]),
  .cin(cin),
  .sum(sum[0]),
  .cout(c[0])
);

full_adder inst1 (
  .a(a[1]),
  .b(b[1]),
  .cin(c[0]),
  .sum(sum[1]),
  .cout(c[1])
);

full_adder inst2 (
  .a(a[2]),
  .b(b[2]),
  .cin(c[1]),
  .sum(sum[2]),
  .cout(c[2])
);

full_adder inst3 (
  .a(a[3]),
  .b(b[3]),
  .cin(c[2]),
  .sum(sum[3]),
  .cout(c[3])
);

endmodule
