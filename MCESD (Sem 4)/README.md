# MCESD (Sem 4) – 8051 Microcontroller Experiments

This repository contains assembly and C programs developed for the **Microcontroller Systems and Embedded Design (MCESD)** laboratory using the **8051 microcontroller**.

## Experiment List

| Exp No | File | Description |
|------|------|-------------|
| 1 | [exp1.asm](exp1.asm) | Transfer 10 bytes from external memory **8035H → 8041H** (without overlap) |
| 2 | [exp2.asm](exp2.asm) | Transfer 10 bytes from external memory **8035H → 8041H** (with overlap) |
| 3 | [exp3.asm](exp3.asm) | Transfer 10 bytes from **40H → 50H** using internal RAM (without overlap) |
| 4 | [exp4.asm](exp4.asm) | Transfer 10 bytes from **40H → 50H** using internal RAM (with overlap) |
| 5 | [exp5.asm](exp5.asm) | Exchange 5 bytes between **0027H and 0041H** |
| 6 | [exp6.asm](exp6.asm) | Exchange 5 bytes between memory locations **without using XCH instruction** |
| 7 | [exp7.asm](exp7.asm) | Add two 8-bit numbers stored at **10H and 11H** |
| 8 | [exp8.asm](exp8.asm) | Subtract two 8-bit numbers stored at **10H and 11H** |
| 9 | [exp9.asm](exp9.asm) | Perform multiplication or division depending on value in **R1** |
| 10 | [exp10.asm](exp10.asm) | Sort an array of **10 bytes in ascending/descending order** |
| 11 | [exp11.asm](exp11.asm) | Count number of **1s and 0s** in a byte stored at **30H** |
| 12 | [exp12.asm](exp12.asm) | Perform **AND / OR / XOR / NOT** operations based on control value in **20H** |
| 13 | [exp13.asm](exp13.asm) | Compare two numbers stored in external memory **8000H and 8001H** |
| 14 | [exp14.asm](exp14.asm) | Implement **8-bit hexadecimal up/down counter** |
| 15 | [exp15.asm](exp15.asm) | Implement **2-digit decimal up/down counter** |
| 16 | [exp16.asm](exp16.asm) | Convert **decimal (9000H) → hexadecimal (30H)** |
| 17 | [exp17.asm](exp17.asm) | Convert **hexadecimal (9000H) → decimal (30H, 31H)** |
| 18 | [exp18.c](exp18.c) | Generate **square wave using DAC interface** |
| 19 | [exp19.c](exp19.c) | Generate **triangular wave using DAC interface** |
| 20 | [exp20.c](exp20.c) | Generate **ramp wave using DAC interface** |
| 21 | [exp21.c](exp21.c) | Control **stepper motor speed using 8051** |
| 22 | [exp22.c](exp22.c) | Control **DC motor speed using 8051** |
| 23 | [exp23.c](exp23.c) | Interface **alphanumeric LCD panel with 8051** |

## Course
**MCESD – Semester 4**