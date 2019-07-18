/*
  adder_4b_rc.v
  Name: Andrue Peters
  Date: 7/17/19

  Inputs: None
  Outputs: None

  Description: Test bench for 4-bit ripple carry adder.
*/

`timescale 1ns/1ps
`include "../../../modules/math/adders/full_adder.v"
`include "../../../modules/math/adders/adder_ripple4_struc2.v"

module adder_ripple4_struc2_tb;

// define Inputs
reg [3:0] a, b;
reg cin;

// define outputs
wire [3:0] sum;
wire cout;

initial
$monitor ("a=%b, b=%b, cin=%b, cout=%b, sum=%b", a, b, cin, cout, sum);

initial begin
  #0 a = 4'h0; b = 4'h1; cin = 1'b0;
  #10 a = 4'h3; b = 4'h4; cin = 1'b1;
  #10 a = 4'h7; b = 4'h5; cin = 1'b0;
  #10 a = 4'hB; b = 4'hC; cin = 1'b1;
  #10 a = 4'h6; b = 4'h4; cin = 1'b0;
  #10 a = 4'h5; b = 4'h4; cin = 1'b1;
  #10 a = 4'hF; b = 4'hF; cin = 1'b1;
  #10 a = 4'h8; b = 4'h8; cin = 1'b1;
  #10 a = 4'hC; b = 4'hC; cin = 1'b0;
  #10 a = 4'h9; b = 4'h5; cin = 1'b1;
  #10 a = 4'h7; b = 4'h7; cin = 1'b0;

  #10 $stop;
end

adder_ripple4_struc2 inst1 (
  .a(a),
  .b(b),
  .cin(cin),
  .sum(sum),
  .cout(cout)
  );

endmodule
