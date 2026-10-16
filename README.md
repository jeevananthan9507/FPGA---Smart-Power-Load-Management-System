# Smart Power Load Management System

## 📌 Project Overview

The **Smart Power Load Management System** is an FPGA-based digital system designed using Verilog HDL and Xilinx Vivado. The project aims to manage electrical loads intelligently by controlling their operation based on predefined priority rules and available power capacity.

The system demonstrates how digital logic and FPGA technology can be used to implement automated load control, improve power utilization, and reduce unnecessary power consumption.

## 🎯 Objectives

- Design a digital power load management system using Verilog HDL.
- Implement priority-based load control logic.
- Simulate and verify the design using a Verilog testbench.
- Explore FPGA-based solutions for efficient electrical load management.

## ⚙️ Tools and Technologies

- **HDL:** Verilog
- **Design and Simulation Tool:** Xilinx Vivado
- **Hardware Platform:** FPGA development board (ZedBoard(Zynq-7000))
- **Constraint File:** XDC

## 📂 Project Structure


Smart-Power-Load-Management-System/
├── Pro1.v                  # Main Verilog design
├── tb_Pro1.v               # Verilog testbench
├── constraints.xdc          # FPGA pin and timing constraints
└── README.md                # Project documentation


*Note: Include the Vivado `.xpr` project file and any required IP or block-design source files if you want others to reopen and reproduce the complete project.*

## 🔄 Working Principle

1. **Input Acquisition:** The system receives digital inputs representing load requests or control conditions.
2. **Load Evaluation:** The control logic evaluates the inputs according to the implemented priority rules.
3. **Load Control:** The system generates output signals to enable or disable the corresponding loads.
4. **Simulation and Verification:** A testbench applies different input combinations and checks the resulting outputs.
5. **FPGA Implementation:** The design can be synthesized and implemented on a supported FPGA board after assigning the appropriate pins and constraints.

The actual control behavior depends on the logic implemented in `Pro1.v`.

## 🧪 Simulation

To simulate the design in Xilinx Vivado:

1. Open Vivado and create or open the project.
2. Add `Pro1.v` under **Design Sources**.
3. Add `tb_Pro1.v` under **Simulation Sources**.
4. Set `tb_Pro1` as the simulation top module.
5. Select **Run Simulation → Run Behavioral Simulation**.
6. Observe the output waveforms and verify the behavior for different input combinations.

## 🔌 FPGA Implementation

For hardware implementation:

1. Select the correct FPGA device or development board. [I have used Zedboard(Zynq-7000)].
2. Add `constraints.xdc` and verify that the pin assignments match the target board.
3. Run **Synthesis** and resolve any errors.
4. Run **Implementation** and review timing and design reports.
5. Generate the bitstream.
6. Program the FPGA and test the design using suitable inputs and outputs.

**Safety note:** This is a digital logic project. Do not connect mains-voltage electrical loads directly to FPGA pins. Practical high-voltage load control requires properly rated, isolated driver circuits and appropriate electrical protection.

## 🚀 Applications

- Priority-based electrical load control
- Smart building energy management
- FPGA-based power management demonstrations
- Educational digital system design
- Energy-efficient automation concepts

## 🔮 Future Enhancements

- Dynamic load prioritization
- Overload detection and automatic load shedding
- Integration with a microcontroller or IoT monitoring platform
- Power consumption logging and analysis

## 📈 Expected Outcome

The project demonstrates the design and simulation of a digital load management controller using Verilog HDL and FPGA development tools. Its effectiveness is evaluated through simulation results and, where supported, FPGA hardware testing.

## 👨‍💻 Project Information

- **Project Name:** Smart Power Load Management System
- **Domain:** FPGA Design and Digital Systems
- **Language:** Verilog HDL
- **EDA Tool:** Xilinx Vivado

## 📜 License

This project is available for educational and learning purposes. A formal license can be added if the project is intended for reuse or distribution.
