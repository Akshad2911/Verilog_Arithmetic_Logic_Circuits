//==============================================================
// 4-Bit Arithmetic Logic Unit (ALU) 
// Verilog HDL
//==============================================================

module alu(
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] S,
    output reg [7:0] Y
);

always @(*) begin
    case(S)
        3'b000: Y = A + B;
        3'b001: Y = A - B;
        3'b010: Y = A * B;
        3'b011: Y = (B != 0) ? (A / B) : 8'd0;
        3'b100: Y = A & B;
        3'b101: Y = A | B;
        3'b110: Y = A ^ B;
        3'b111: Y = ~A;
        default: Y = 8'd0;
    endcase
end

endmodule

//==============================================================
// 4-Bit Arithmetic Logic Unit (ALU) Testbench
// Verilog HDL
//==============================================================

`timescale 1ns/1ps

module alu_tb;

reg [3:0] A, B;
reg [2:0] S;
wire [7:0] Y;

alu uut (
    .A(A),
    .B(B),
    .S(S),
    .Y(Y)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, alu_tb);

    // Addition: 5 + 3 = 8
    A = 4'd5; B = 4'd3; S = 3'b000; #10;

    // Subtraction: 9 - 4 = 5
    A = 4'd9; B = 4'd4; S = 3'b001; #10;

    // Multiplication: 6 × 3 = 18
    A = 4'd6; B = 4'd3; S = 3'b010; #10;

    // Division: 12 / 4 = 3
    A = 4'd12; B = 4'd4; S = 3'b011; #10;

    // AND: 10 & 12 = 8
    A = 4'd10; B = 4'd12; S = 3'b100; #10;

    // OR: 5 | 10 = 15
    A = 4'd5; B = 4'd10; S = 3'b101; #10;

    // XOR: 9 ^ 5 = 12
    A = 4'd9; B = 4'd5; S = 3'b110; #10;

    // NOT: ~6 = 11111001 (8-bit output)
    A = 4'd6; B = 4'd0; S = 3'b111; #10;

    $finish;

end

endmodule
