//==================================================
// 4-Bit Ripple Carry Adder (Behavioral) - Verilog HDL
//==================================================

module ripple_carry_adder (
    input  [3:0] A,
    input  [3:0] B,
    input        Cin,
    output reg [3:0] Sum,
    output reg       Cout
);

always @(*) begin
    {Cout, Sum} = A + B + Cin;
end

endmodule

//==================================================
// Testbench for 4-Bit Ripple Carry Adder
//==================================================
`timescale 1ns/1ps

module ripple_carry_adder_tb;

reg  [3:0] A;
reg  [3:0] B;
reg        Cin;

wire [3:0] Sum;
wire       Cout;

ripple_carry_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

    $display(" A     B   Cin | Cout Sum ");
    $monitor("%b %b   %b   |  %b   %b", A, B, Cin, Cout, Sum);

    A = 4'b0000; B = 4'b0000; Cin = 0;
    #10;

    A = 4'b0011; B = 4'b0101; Cin = 0;
    #10;

    A = 4'b1111; B = 4'b0001; Cin = 0;
    #10;

    A = 4'b1010; B = 4'b0110; Cin = 1;
    #10;

    A = 4'b1111; B = 4'b1111; Cin = 1;
    #10;

    $finish;

end

endmodule
