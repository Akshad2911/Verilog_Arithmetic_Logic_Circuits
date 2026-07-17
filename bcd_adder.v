//==================================================
// BCD Adder - Verilog HDL
//==================================================

module bcd_adder(
    input  [3:0] A,
    input  [3:0] B,
    input        Cin,
    output reg [3:0] Sum,
    output reg   Cout
);

reg [4:0] temp;

always @(*) begin
    temp = A + B + Cin;

    if (temp > 9) begin
        temp = temp + 6;
        Sum  = temp[3:0];
        Cout = 1'b1;
    end
    else begin
        Sum  = temp[3:0];
        Cout = 1'b0;
    end
end

endmodule

//==================================================
// Testbench BCD Adder - Verilog HDL
//==================================================

`timescale 1ns/1ps

module bcd_adder_tb;

reg  [3:0] A;
reg  [3:0] B;
reg        Cin;

wire [3:0] Sum;
wire       Cout;

bcd_adder DUT (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    // Generate waveform
    $dumpfile("dump.vcd");
    $dumpvars(0, bcd_adder_tb);

    $display(" A    B   Cin | Cout Sum");
    $display("--------------------------");

    A = 4'd2; B = 4'd3; Cin = 0; #10;
    A = 4'd5; B = 4'd4; Cin = 0; #10;
    A = 4'd7; B = 4'd5; Cin = 0; #10;
    A = 4'd9; B = 4'd9; Cin = 0; #10;
    A = 4'd8; B = 4'd1; Cin = 1; #10;

    $finish;
end

endmodule
