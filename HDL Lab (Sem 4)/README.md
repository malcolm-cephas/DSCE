# 🚀 HDL Lab - Semester 4 (DSCE)

Welcome to the **Hardware Description Language (HDL) Laboratory** repository. This collection contains Verilog implementations and testbenches for various digital logic circuits, ranging from basic combinational gates to complex sequential state machines and arithmetic units.

---

## 🛠️ Technology Stack
*   **Language:** Verilog HDL
*   **Simulation Tools:** ModelSim / Icarus Verilog
*   **Waveform Viewer:** GTKWave (optional)

---

## 📂 Experiment Categories

### 1. Combinational Logic Designs
| File | Description |
| :--- | :--- |
| `alu.v` | 4-bit Arithmetic Logic Unit (Add, Sub, Mul, AND, OR, etc.) |
| `CLD.v` | Carry Lookahead Adder (High-speed addition logic) |
| `Decoder.v` | n-to-m Decoder implementation |
| `encoder_wop.v` | Encoder without Priority |
| `encoder_wp.v` | Priority Encoder |
| `bin_to_gray.v` | Binary to Gray code converter |
| `gray_to_bin.v` | Gray to Binary code converter |
| `parity.v` | Parity Generator and Checker |
| `array_multiplier.v` | 4x4 Array Multiplier |

### 2. Sequential Logic Designs
| File | Description |
| :--- | :--- |
| `dff.v` | D Flip-Flop |
| `jkff.v` | JK Flip-Flop |
| `tff.v` | T Flip-Flop |
| `syncbinary.v` | Synchronous Binary Counter |
| `asyncbinary.v` | Asynchronous Binary Counter |
| `syncbcd .v` | Synchronous BCD (0-9) Counter |
| `asyncbcd.v` | Asynchronous BCD (0-9) Counter |
| `Random Counter.v` | Custom sequence / Random counter |
| `LFSR8_11D.v` | Linear Feedback Shift Register (8-bit) |

### 3. Finite State Machines (FSM)
| File | Description |
| :--- | :--- |
| `mealy.v` | Mealy Machine implementation (named `meanly.v` in source) |
| `moore.v` | Moore Machine implementation |

### 4. Arithmetic Units
| File | Description |
| :--- | :--- |
| `padd.v` | Parallel Adder |

### 5. Open Ended Experiment
Located in the `New folder/` directory, this project implements a specialized digital circuit for the lab's final assessment.

| File | Description |
| :--- | :--- |
| `openend.v` | **Random Counter** - Implemented using a 4-bit Linear Feedback Shift Register (LFSR) with XOR feedback. |
| `openend_tb.v` | Testbench for verifying the pseudo-random sequence generation. |

---

## 🚀 How to Run

### Using Icarus Verilog (CLI)
1. **Compile the design and testbench:**
   ```bash
   iverilog -o simulation_output design_file.v testbench_file.v
   ```
2. **Run the simulation:**
   ```bash
   vvp simulation_output
   ```
3. **View Waveforms (if VCD file is generated):**
   ```bash
   gtkwave dump.vcd
   ```

### Using ModelSim (GUI)
1. Create a new project.
2. Add `.v` files to the project.
3. Compile all files.
4. Start simulation on the `_tb` module.
5. Add signals to the Wave window and run.

---

## 📝 Project Details
*   **Semester:** 4th Semester
*   **Lab:** HDL Lab

---

*Created for academic purposes.*
