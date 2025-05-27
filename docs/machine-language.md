# Machine Language
Machine Language (often called Machine Code) is the most fundamental and lowest-level programming language. It's the only language a computer's Central Processing Unit (CPU) can directly understand and execute.

It can be think of as:

- If high-level programming languages (like Python or Java) are like speaking to someone in a conversational, human-like language (e.g., English),
- Then machine language is like communicating using the raw electrical signals (on/off, high/low voltage) that the computer's hardware actually operates on.

Machine language consists of sequences of binary digits (bits) – 0s and 1s. Each sequence corresponds to a specific, very elementary instruction that the CPU can perform, such as:

- Adding two numbers.
- Moving a piece of data from one memory location to another.
- Making a decision based on a comparison (e.g., if a value is zero).
- Jumping to a different instruction in the program.
- These instructions are known as opcodes (operation codes), and they are often followed by operands, which specify the data or memory locations the operation should use.


## The "Turing Machine" Connection:

While a Turing machine is an abstract model, machine language is the practical, hardware-specific implementation of instructions that allow a physical computer to perform computations. 

Just as a Turing machine manipulates symbols on a tape according to a set of **rules**, a CPU manipulates **data** in **memory** and **registers** _according to the instructions given in machine code_. 

A CPU is designed to execute a specific Instruction Set Architecture (ISA), which defines the machine language instructions it understands. Any algorithm that a Turing machine can compute can theoretically be expressed (though perhaps very tediously) in the machine language of a sufficiently powerful computer.[]