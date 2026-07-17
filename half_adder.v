//==================================================
// Half Adder - Verilog HDL
//==================================================

module half_adder (
    input A,
    input B,
    output Sum,
    output Carry
);

assign Sum   = A ^ B;
assign Carry = A & B;

endmodule

//==================================================
// Half Adder Testbench
//==================================================

`timescale 1ns/1ps

module half_adder_tb;

reg A;
reg B;

wire Sum;
wire Carry;

half_adder uut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin

    $display("A B | Sum Carry");
    $display("----------------");

    A = 0; B = 0; #10;
    $display("%b %b |  %b    %b", A, B, Sum, Carry);

    A = 0; B = 1; #10;
    $display("%b %b |  %b    %b", A, B, Sum, Carry);

    A = 1; B = 0; #10;
    $display("%b %b |  %b    %b", A, B, Sum, Carry);

    A = 1; B = 1; #10;
    $display("%b %b |  %b    %b", A, B, Sum, Carry);

    $finish;

end

endmodule
