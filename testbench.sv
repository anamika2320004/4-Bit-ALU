// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module alu4bit_tb;

    logic [3:0] A, B;
    logic [1:0] ALU_Sel;
    logic [3:0] Result;
    logic CarryOut;

    // Instantiate ALU
    alu4bit uut (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .Result(Result),
        .CarryOut(CarryOut)
    );

    initial begin
        $dumpfile("alu4bit.vcd"); // GTKWave file
        $dumpvars(0, alu4bit_tb);

        // Test ADD
        A = 4'b0101; B = 4'b0011; ALU_Sel = 2'b00;
        #10;
        $display("ADD: A=%b, B=%b, Result=%b, CarryOut=%b", A, B, Result, CarryOut);

        // Test SUB
        A = 4'b1010; B = 4'b0101; ALU_Sel = 2'b01;
        #10;
        $display("SUB: A=%b, B=%b, Result=%b, CarryOut=%b", A, B, Result, CarryOut);

        // Test AND
        A = 4'b1100; B = 4'b1010; ALU_Sel = 2'b10;
        #10;
        $display("AND: A=%b, B=%b, Result=%b, CarryOut=%b", A, B, Result, CarryOut);

        // Test OR
        A = 4'b1100; B = 4'b1010; ALU_Sel = 2'b11;
        #10;
        $display("OR: A=%b, B=%b, Result=%b, CarryOut=%b", A, B, Result, CarryOut);

        $finish;
    end

endmodule
