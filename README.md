# DA-Based 16-Point DFT using Verilog HDL

## Overview

This project implements a **16-Point Discrete Fourier Transform (DFT)** using the **Distributed Arithmetic (DA)** technique in **Verilog HDL**. The design replaces conventional multiplier-based computations with LUT-based distributed arithmetic, resulting in a hardware-efficient implementation suitable for FPGA and ASIC designs.

The design follows a modular architecture consisting of ROMs, multiplexers, decoders, accumulators, and iterative processing blocks. Functional verification was performed using **Xilinx Vivado**.



## Features

- 16-point DFT implementation
- Distributed Arithmetic (Multiplier-less Architecture)
- Modular Verilog HDL design
- Functional verification using Xilinx Vivado
- Synthesizable RTL



## Project Files

| File | Description |
|------|-------------|
| `DFT_16_POINT.v` | Top-level DFT module |
| `DFT_1.v` | DFT processing block |
| `iteration.v` | Iterative computation module |
| `ROM.v` | Lookup Table (ROM) |
| `decoder.v` | Decoder module |
| `MUX.v` | Multiplexer |
| `MUX_4_4.v` | 4:1 Multiplexer |
| `AC.v` | Accumulator module |
| `DFT_16_TB.v` | Testbench for functional verification |



## Design Flow

1. Design Entry in Verilog HDL
2. Functional Simulation using Xilinx Vivado
3. Verification using Testbench
4. RTL Analysis
5. Synthesis



## Tools Used

- Verilog HDL
- Xilinx Vivado
- GitHub


## Applications

- Digital Signal Processing (DSP)
- FPGA Prototyping
- ASIC Design
- Signal Analysis
- Embedded Systems

## Future Improvements

- Parameterized N-point DFT
- Pipelined architecture
- FFT implementation
- FPGA resource utilization analysis
- Timing and power optimization

## Author

**Likhitha Kanukuntla**

M.Tech – VLSI and Nanoelectronics  
Indian Institute of Technology Guwahati

