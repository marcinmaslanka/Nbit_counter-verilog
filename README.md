# 🔢 N-Bit Counter in Verilog

This project implements a parameterizable **n-bit counter** in Verilog and includes a testbench for simulation using **Icarus Verilog (iverilog)** and waveform viewing with **GTKWave**.

---


## 📦 Module Description

### `counter.v`

A negative-edge triggered counter with asynchronous clear. The bit-width is defined via a parameter.

#### Parameters:
- `N` – Counter bit-width (default: 7 → 8-bit counter)

#### Ports:
| Name   | Direction | Description          |
|--------|-----------|----------------------|
| `clear`| Input     | Active-high reset     |
| `clock`| Input     | Clock signal (negative edge triggered) |
| `count`| Output    | Current count value (`[N:0]`) |

---

## 🧪 Testbench

### `nbit_counter_tb.v`

Includes:
- Clock generation (50 MHz)
- Stimulus for clear signal
- VCD waveform dump (`nbit_counter.vcd`)

---

## ▶️ Running the Simulation

### 🔧 Compile
```bash
iverilog -o nbit_counter.vvp nbit_counter_tb.v nbit_counter.v
```
![Screenshot From 2025-04-21 13-27-27](https://github.com/user-attachments/assets/4349247e-a9dd-40af-814e-356349a90671)

## 🚀 Run
```bash
vvp nbit_counter.vvp
```
## 📈 View the waveform (optional)
```bash
gtkwave nbit_counter.vcd
```

![Screenshot From 2025-04-21 13-29-15](https://github.com/user-attachments/assets/05a0f159-183a-43c4-a1e4-58dd7ba290f3)


## ✅ Example Output
During simulation, the counter clears to 0, then begins counting on each negative clock edge.

---

