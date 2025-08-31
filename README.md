Design a 4-bit ALU combining add, subtract, AND, OR.
# 4-Bit ALU (Arithmetic Logic Unit) in Verilog

## Project Description
This project implements a **4-bit ALU** using **Verilog**, capable of performing basic arithmetic and logic operations.  
The ALU supports the following operations:  

- **ADD** (A + B)  
- **SUB** (A - B)  
- **AND** (A & B)  
- **OR**  (A | B)  

The project demonstrates digital design concepts and is suitable for educational purposes.

---

## ALU Specifications

| ALU_Sel | Operation |
|---------|-----------|
| 00      | ADD       |
| 01      | SUB       |
| 10      | AND       |
| 11      | OR        |

**Inputs:**  
- `A` : 4-bit input  
- `B` : 4-bit input  
- `ALU_Sel` : 2-bit selector for operation  

**Outputs:**  
- `Result` : 4-bit output  
- `CarryOut` : Carry or borrow flag for ADD/SUB operations  

---

## Files Included

| File Name        | Description                                |
|-----------------|--------------------------------------------|
| `design.sv`     | Verilog code for 4-bit ALU                 |
| `testbench.sv`  | Testbench to verify all ALU operations    |

---

## Testbench Example

Example input vectors and expected outputs:

| Operation | A     | B     | Result | CarryOut |
|-----------|-------|-------|--------|----------|
| ADD       | 0101  | 0011  | 1000   | 0        |
| SUB       | 1010  | 0101  | 0101   | 0        |
| AND       | 1100  | 1010  | 1000   | 0        |
| OR        | 1100  | 1010  | 1110   | 0        |

**Verilog display example in testbench:**
```verilog
$display("ADD: A=%b, B=%b, Result=%b, CarryOut=%b", A, B, Result, CarryOut);

How to Run on EDA Playground

Select SystemVerilog as the language.

Paste design.sv and testbench.sv in separate files.

Choose Icarus Verilog as the simulator.

Enable EP waveform output.

Click Run:

Console displays ALU outputs.
