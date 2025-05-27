# Data and its type

    Data is any information that can be processed by a computer. It can represent numbers, text, images, or instructions.

## Fundamental Data Types
|Category|	Examples|	Usage|
---------|----------|--------|
|Numeric|	int, float, double|	Calculations, measurements
|Character|	char, string|	Text processing
|Boolean|	bool (True/False)|	Logic (conditions, flags)
|Composite|	array, struct|	Grouping data (e.g., student records)
|Pointer|	Memory addresses (*ptr)|	Low-level memory management

## Data type and cpu architecture

CPUs process data based on their register size and instruction set architecture.

### Key CPU Concepts
* **Registers:** Small, fast storage (e.g., 64-bit CPUs use 64-bit registers).
* **Word Size:** Defines how much data a CPU handles at once (e.g., 32-bit vs. 64-bit).
* **Endianness:** Byte order in memory (Big-Endian vs. Little-Endian).

### Storing data item in memory

* A 32-bit integer (int x = 5) occupies 4 bytes in RAM.
* The CPU’s ALU (Arithmetic Logic Unit) performs operations on it.

```assembly
; x86 Assembly (Little-Endian)
mov eax, 5     ; Store 5 in register EAX (32-bit) - Binary: 00000000 00000000 00000000 00000101
```
### High level languages and data handling

Different languages abstract data types differently:

#### Low-Level Languages (C, Rust)
* Direct hardware control (e.g., int size matches CPU word size).
* Manual memory management (pointers, malloc).

```c
int x = 5;          // 32-bit integer (CPU register-sized)
float y = 3.14;     // IEEE 754 floating-point (ALU-compatible)
char c = 'A';       // ASCII (1 byte, stored in RAM)
```

#### High-Level Languages (Python, Java)

* Dynamic typing (e.g., Python int auto-adjusts to CPU).
* Memory managed by runtime (no pointers).

