/*
  tb.v
  Name: Andrue Peters
  Date: 7/16/19

  Inputs: None
  Outputs: None

  Description: Test bench for a full_adder
*/

`include "../../../modules/math/adders/full_adder.v"



module full_adder_tb;
reg a, b, cin;
wire sum, cout;

// apply input vectors
initial
begin: apply_stimulus
	reg[3:0] invect;	// invect[3] termantes the for loop
	for (invect = 0; invect < 8; invect = invect + 1)
		begin
			{a, b, cin} = invect [3:0];
			#10 $display ("abcin = %b, cout = %b, sum = %b", {a, b, cin}, cout, sum);
		end
end

// instantiate the module into the test bench
full_adder inst1 (
	.a(a),
	.b(b),
	.cin(cin),
	.sum(sum),
	.cout(cout)
);

endmodule;