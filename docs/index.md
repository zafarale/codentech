## What is programming:

    A language is a structured system of communication that uses symbols (words, gestures, or code) to convey meaning between individuals or systems.

Key Aspects:
- Symbols & Syntax: Rules for combining symbols (e.g., grammar in English, opcodes in machine language).
- Semantics: Meaning derived from those symbols (e.g., "cat" refers to an animal, ADD refers to a CPU operation).
- Purpose: Transmit information, instructions, or ideas between a sender and receiver.

### Language as a Bridge

Just like humans use languages (like English, Spanish, or Mandarin) to share ideas and instructions, we use programming languages to communicate with computers. A programming language provides a structured way to give commands (communicate | prompt) to a computer.

### Programsas vehicle of idea

A program is essentially a detailed list of instructions, written in a specific programming language, that instructs a computer exactly, what to do, step by step ([algorithm](./algorithms.md)). 

The computer then [executes](./von-neuman.md) these instructions to achieve a desired outcome, whether it's displaying a webpage, calculating complex equations, or playing your favorite game.

So, if a language is the medium:

- A program is the specific message or set of instructions.
- The computer is the recipient that understands and acts on those instructions.

### Programming Languages: Systems for Describing Computation

Therefore, a programming language is a formal system of **rules, symbols, and structures** used to define and manipulate [data](./data-type.md), and to describe a [sequence of operations](./algorithms.md) or computations. 

language allows us to express algorithms (those step-by-step description) in a way that a computer can ultimately process.

<details>
   <summary>Medium of expression</summary>
   Language is a dynamic bridge—linking minds, societies, and civilizations. Whether spoken, written, or coded (as in programming), it remains fundamental to human progress and global interconnectedness. Without language, collaboration, innovation, and cultural richness would be impossible.
</details>

## The Theoretical Foundation: Turing Machines

To understand what a programming language can do, we often refer to a theoretical concept called a Turing machine. Proposed by Alan Turing in 1936.

    A Turing machine is an abstract mathematical model of a computer. It's a very simple, hypothetical device that can simulate any computer algorithm, no matter how complex.

<details>
   <summary>Turing Machine</summary>
   <ol>
      <li>
         <b>An infinitely long tape:</b> This tape is divided into cells, and each cell can hold a single symbol from a finite set of symbols (e.g., '0', '1', or a blank symbol). Think of this as the computer's memory, albeit an infinitely long one.
      </li>
      <li>
         <b>A read/write head:</b> This head is positioned over one cell on the tape at any given time. It can: 
         <ul>
            <li>Read the symbol in the current cell.</li>
            <li>Write a new symbol into the current cell (erasing the previous one).</li>
            <li>Move one cell to the left or one cell to the right on the tape.</li>
         </ul>
      </li>
      <li>
         <b>A state register:</b> This holds the current "state" of the machine. There's a finite number of possible states, including a special "start state" and one or more "halt states" (which stop the machine).
      </li>
      <li>
         A finite table of instructions (or a transition function): This is the "program" for the Turing machine. Based on the machine's current state and the symbol currently under the read/write head, the instruction table tells the machine: 
      </li>
   </ol>
</details>

Essentially, a Turing machine helps us define the very notion of computability – what problems can, in principle, be solved by a computer.

### Turing-Completeness: A Measure of Power
A programming language is described as Turing-complete if it can be used to simulate any Turing machine. This means that if a problem is solvable by a Turing machine (i.e., it's computable), a [Turing-complete language](./machine-language.md) has the necessary expressive power to describe the steps to solve that problem.

Most general-purpose programming languages you encounter (like Python, Java, C++, JavaScript) are Turing-complete. This signifies that they are powerful enough to perform any computation that any other [Turing-complete language](./machine-language.md)  (or a Turing machine itself) can. The choice of language then often comes down to factors like ease of use, performance for specific tasks, or the ecosystem surrounding the language, rather than fundamental computational capability.

In essence, Turing-completeness provides a benchmark for the expressive power of a programming language in the realm of computation.
