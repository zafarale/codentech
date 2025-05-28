# Machine Language
Machine Language (often called Machine Code) is the most fundamental and lowest-level programming language. It's the only language a computer's Central Processing Unit (CPU) can directly understand and execute.

It consists of binary instructions (opcodes and operands) that directly control the hardware.

**Key Characteristics:**
- Binary Representation: Instructions are encoded in 1s and 0s (e.g., 10110000 01100001 for MOV AL, 61h in x86).
- Hardware-Specific: Each CPU architecture (x86, ARM, RISC-V) has its own machine language.
- No Abstraction: Unlike high-level languages (Python, Java), there are no variables or functions—just registers, memory addresses, and raw operations.


Machine language consists of sequences of binary digits (bits) – 0s and 1s. Each sequence corresponds to a specific, very elementary instruction that the CPU can perform, such as:

- Adding two numbers.
- Moving a piece of data from one memory location to another.
- Making a decision based on a comparison (e.g., if a value is zero).
- Jumping to a different instruction in the program.
- These instructions are known as opcodes (operation codes), and they are often followed by operands, which specify the data or memory locations the operation should use.


Example (Simplified x86 Machine Code):

|Binary Instruction|	Assembly Equivalent|	Meaning|
|------------------|-----------------------|------------|
|10110000 01100001 |	MOV AL, 61h|	Load the value 0x61 (97 in decimal) into register AL.|

## The "Turing Machine" Connection:

A Turing Machine (TM) is a theoretical model of computation proposed by Alan Turing (1936). It defines what it means for a problem to be computable and serves as the foundation for modern computers.

**Key Components:**

- Infinite Tape: Divided into cells, each holding a symbol (e.g., 0, 1, or blank).
- Read/Write Head: Moves left/right, reads and writes symbols.
- State Register: Stores the machine's current state (e.g., q0, q1).
- Transition Rules (Program): Determines what the machine does based on current state and symbol read.


While a Turing machine is an abstract model, machine language is the practical, hardware-specific implementation of instructions that allow a physical computer to perform computations. 

Just as a Turing machine manipulates symbols on a tape according to a set of **rules**, a CPU manipulates **data** in **memory** and **registers** _according to the instructions given in machine code_. 

A CPU is designed to execute a specific Instruction Set Architecture (ISA), which defines the machine language instructions it understands. Any algorithm that a Turing machine can compute can theoretically be expressed (though perhaps very tediously) in the machine language of a sufficiently powerful computer.[]

## Connection Between Machine Language and Turing Machines

**1. Turing Completeness:**
- A system (like a CPU) is Turing complete if it can simulate a Turing Machine.
- Von Neumann machines are Turing complete because they can execute any computable algorithm (given enough time/memory).

** 2. Machine Language as a Realization of Turing’s Model:**
- A CPU’s instruction set (machine language) allows it to perform computations like a TM.
- Turing Machine ≈ Abstract Model
- Infinite tape ≈ RAM (though real memory is finite).
- Transition rules ≈ Machine code instructions.

**3. Limitations:** 
- Real computers have finite memory, unlike a TM’s infinite tape.
- Turing machines assume unlimited time, but real systems must be efficient.