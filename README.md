# Verilog_Arithmetic_Logic_Circuits – Verilog HDL

A collection of fundamental **Arithmetic Logic Circuits** designed using **Verilog HDL**. This repository includes commonly used arithmetic building blocks that form the foundation of digital systems and processor datapaths. Each module is implemented with its own design file and testbench for functional verification.

---

# 📖 Modules Included

| Module | Description |
|---------|-------------|
| **Half Adder** | Performs addition of two single-bit binary numbers without a carry input. Produces Sum and Carry outputs. |
| **Full Adder** | Adds three single-bit inputs (A, B, Cin) and generates Sum and Carry Out. |
| **Ripple Carry Adder** | Multi-bit adder created by cascading Full Adders. Carry propagates through each stage sequentially. |
| **BCD Adder** | Adds two Binary Coded Decimal (BCD) digits and performs decimal correction when the result exceeds 9. |
| **ALU (Arithmetic Logic Unit)** | Performs arithmetic and logical operations such as Addition, Subtraction, AND, OR, XOR, NOT, and other supported functions based on control inputs. |

---

# 🛠 Features

- Verilog HDL implementation
- Modular and easy-to-understand code
- Separate testbench for every design
- Simulation-ready
- Beginner-friendly implementations
- Well-commented source code

---

# 📋 Arithmetic Modules Overview

| Module | Inputs | Outputs | Purpose |
|---------|--------|---------|---------|
| Half Adder | A, B | Sum, Carry | Adds two 1-bit numbers |
| Full Adder | A, B, Cin | Sum, Cout | Adds three 1-bit inputs |
| Ripple Carry Adder | A, B, Cin | Sum, Cout | Multi-bit binary addition |
| BCD Adder | Two BCD digits | BCD Sum | Decimal digit addition |
| ALU | Operands, Select | Result | Arithmetic & Logical operations |

---

## 📋 ALU Operations

| Operation | A | B | Select (S) | Expected Output (Y) |
|-----------|--:|--:|:----------:|--------------------:|
| Addition | 5 | 3 | `000` | 8 |
| Subtraction | 9 | 4 | `001` | 5 |
| Multiplication | 6 | 3 | `010` | 18 |
| Division | 12 | 4 | `011` | 3 |
| AND | 10 | 12 | `100` | 8 |
| OR | 5 | 10 | `101` | 15 |
| XOR | 9 | 5 | `110` | 12 |
| NOT | 6 | X | `111` | 249 (`8'b11111001`) |

---

# 🎯 Learning Outcomes

This repository helps in understanding:

- Binary arithmetic
- Carry generation and propagation
- Multi-bit addition
- Decimal (BCD) arithmetic
- Arithmetic Logic Unit (ALU) design
- Combinational circuit design using Verilog HDL
- Digital design simulation and verification

---

# 🚀 Tools Used

- Verilog HDL
- EDA Playground
- ModelSim / QuestaSim
- GTKWave / EPWave

---
