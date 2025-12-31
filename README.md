# SRAM using Verilog (Read & Write)

## About
A simple **Synchronous RAM (SRAM)** design implemented in **Verilog HDL**, supporting basic **read and write operations**.  
This project is intended for learning **RTL memory modeling and simulation**.

---

## What This Project Does
- Stores data at a given address during write operation  
- Retrieves stored data during read operation  
- Uses clock-controlled memory access  

---

## Features
- Synchronous write operation  
- Address-based memory access  
- Testbench-driven simulation  

---

## File Structure
sram.v // SRAM RTL module
sram_tb.v // Testbench for simulation

---

## Working Principle
- On **posedge clk** and `we = 1`, input data is written to memory  
- On **posedge clk** and `we = 0`, data is read from memory  

---

## Simulation
- Simulated using **Xilinx Vivado**
- Functional verification through waveform analysis  

---

## Applications
- Learning digital memory concepts  
- RTL/Verilog practice  
- VLSI and FPGA education  

---

## Limitations
- Single-port memory  
- Ideal memory model (no delay or power modeling)  

---

## Tools Used
- Verilog HDL  
- Xilinx Vivado  

---

## Note
This is a **beginner-friendly educational project**.

