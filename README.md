# Verilog_Arithmetic_Logic_Circuits – Verilog HDL

## 📖 Overview

**Verilog_Arithmetic_Logic_Circuits** is a collection of fundamental arithmetic and logic circuits implemented using **Verilog HDL**. These modules serve as the basic building blocks of digital systems, processors, microcontrollers, and FPGA-based designs.

Each circuit is designed using synthesizable Verilog, verified through dedicated testbenches, and simulated to ensure correct functionality. This repository is suitable for students, beginners in Digital Electronics, and FPGA/VLSI enthusiasts who want to understand arithmetic circuit design from the ground up.

---

# 📖 Modules

## 1. Half Adder

### Description

A **Half Adder** is the simplest combinational arithmetic circuit used to add two single-bit binary inputs. Since it has no carry input, it can only perform addition of two bits.

### Inputs

- A
- B

### Outputs

- Sum
- Carry

### Boolean Equations

```
Sum   = A ⊕ B
Carry = A · B
```

### Truth Table

| A | B | Sum | Carry |
|:-:|:-:|:---:|:-----:|
|0|0|0|0|
|0|1|1|0|
|1|0|1|0|
|1|1|0|1|

---

### 📈 Simulation Waveform

> Replace the image below with your waveform screenshot.

<p align="center">
<img width="872" height="225" alt="Image" src="https://github.com/user-attachments/assets/1ea29932-8b5d-4a81-9635-1c3a42538e70" />
</p>

---

# 2. Full Adder

### Description

A **Full Adder** extends the Half Adder by including a carry input. It adds three one-bit inputs and produces a Sum and Carry Out.

### Inputs

- A
- B
- Cin

### Outputs

- Sum
- Cout

### Boolean Equations

```
Sum  = A ⊕ B ⊕ Cin
Cout = AB + BCin + ACin
```

### Truth Table

|A|B|Cin|Sum|Cout|
|:-:|:-:|:-:|:-:|:-:|
|0|0|0|0|0|
|0|0|1|1|0|
|0|1|0|1|0|
|0|1|1|0|1|
|1|0|0|1|0|
|1|0|1|0|1|
|1|1|0|0|1|
|1|1|1|1|1|

---

### 📈 Simulation Waveform

<p align="center">
<img width="877" height="280" alt="Image" src="https://github.com/user-attachments/assets/2d34d33a-7fdb-4fe2-a879-42b7e3326935" />
</p>

---

# 3. Ripple Carry Adder

### Description

A **Ripple Carry Adder (RCA)** is a multi-bit binary adder constructed by cascading multiple Full Adders. The carry generated from one stage propagates to the next stage, making it simple but slower for larger bit-widths.

### Inputs

- A
- B
- Cin

### Outputs

- Sum
- Cout

### Features

- Multi-bit binary addition
- Built using Full Adders
- Carry propagates stage-by-stage
- Easy to implement and understand

---

### 📈 Simulation Waveform

<p align="center">
<img width="882" height="281" alt="Image" src="https://github.com/user-attachments/assets/4c81019c-70d3-4fc1-b8a5-8c698ef32736" />
</p>

---

# 4. BCD Adder

### Description

A **BCD (Binary Coded Decimal) Adder** performs decimal digit addition. After binary addition, if the result exceeds decimal 9 or produces a carry, the circuit automatically adds **0110** to obtain a valid BCD output.

### Inputs

- BCD Digit A
- BCD Digit B
- Carry In

### Outputs

- BCD Sum
- Carry Out

### Features

- Decimal arithmetic
- Automatic BCD correction
- Suitable for digital calculators and decimal systems

---

### 📈 Simulation Waveform

<p align="center">
<img width="1812" height="498" alt="Image" src="https://github.com/user-attachments/assets/f8e074f6-757b-45a9-9fa7-163f1c064e93" />
</p>

---

# 5. Arithmetic Logic Unit (ALU)

### Description

The **Arithmetic Logic Unit (ALU)** is the computational core of a processor. It performs arithmetic and logical operations based on the control (select) input.

### Inputs

- Operand A
- Operand B
- Select Line (S)

### Output

- Result (Y)

---

## Supported Operations

| Operation | A | B | Select | Output |
|-----------|--:|--:|:------:|-------:|
| Addition | 5 | 3 | 000 | 8 |
| Subtraction | 9 | 4 | 001 | 5 |
| Multiplication | 6 | 3 | 010 | 18 |
| Division | 12 | 4 | 011 | 3 |
| AND | 10 | 12 | 100 | 8 |
| OR | 5 | 10 | 101 | 15 |
| XOR | 9 | 5 | 110 | 12 |
| NOT | 6 | X | 111 | 249 |

---

### Features

- Arithmetic Operations
  - Addition
  - Subtraction
  - Multiplication
  - Division

- Logical Operations
  - AND
  - OR
  - XOR
  - NOT

---

# 🛠 Tools Used

- Verilog HDL
- EDA Playground
- ModelSim / QuestaSim
- GTKWave / EPWave

---

# 🎯 Learning Outcomes

After completing these designs, you will understand:

- Combinational circuit design
- Binary addition techniques
- Carry generation and propagation
- Multi-bit arithmetic
- Binary Coded Decimal arithmetic
- ALU architecture and operations
- Verilog HDL coding practices
- Testbench development
- Functional simulation and waveform analysis

---

# 📚 Applications

- Digital Computers
- Arithmetic Logic Units (ALUs)
- CPUs and Microprocessors
- Embedded Systems
- FPGA Development
- ASIC Design
- Digital Signal Processing
- Educational VLSI Projects

---
