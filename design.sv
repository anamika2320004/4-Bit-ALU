// Code your design here
module alu4bit (
    input  logic [3:0] A,       // First operand
    input  logic [3:0] B,       // Second operand
    input  logic [1:0] ALU_Sel, // ALU Operation selector
    output logic [3:0] Result,  // ALU Result
    output logic CarryOut        // Carry Out for ADD/SUB
);

    always_comb begin
        CarryOut = 0;
        case(ALU_Sel)
            2'b00: {CarryOut, Result} = A + B;       // ADD
            2'b01: {CarryOut, Result} = A - B;       // SUB
            2'b10: Result = A & B;                   // AND
            2'b11: Result = A | B;                   // OR
            default: Result = 4'b0000;
        endcase
    end
endmodule
