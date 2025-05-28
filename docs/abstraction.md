# Abstraction
>Abstraction is the process of simplifying complex systems by hiding unnecessary details while exposing only the essential features. 

Abstraction allows us to focus on what something does rather than how it does it.

_Imagine driving a car. You don’t need to know how the engine works to press the accelerator and move forward. The car’s controls (steering wheel, pedals) abstract away the mechanical details, letting you focus on driving._

## Abstraction in computer science
The hierarchy of abstraction layers in computer science progresses from the lowest machine-level operations (opcodes) through assembly language, compiled languages, interpreted languages, frameworks/libraries, and high-level programming constructs. Each layer abstracts away complexity from the layer below it, making it easier to work with and more efficient for the developer.

At the hardware level, CPUs execute binary instructions (**opcodes**). Each opcode represents a simple operation.

Example: Adding Two Numbers in Machine Code

- Suppose the CPU has an ADD opcode (0001 in binary).
- The instruction 0001 0010 0011 might mean:
    * 0001 = ADD
    * 0010 = Register 2
    * 0011 = Register 3

**The CPU hides how transistors perform addition—we just use opcodes**

### Low-Level Languages: Minimal Abstraction
At the lowest level of abstraction is machine language, which consists of opcodes that specify specific operations that can be performed on a computer's registers or memory. Machine language provides the most direct access to hardware resources but requires detailed knowledge of the underlying architecture to work effectively.

```assembly
ADD R2, R3  ; Adds values in registers R2 and R3
```


### High-Level Languages: Further Abstraction[^1]
**Compiled languages**, such as C and Java, are higher-level languages that are compiled into machine code before execution. This allows developers to work at a higher level of abstraction while still retaining control over the generated code.

While **Interpreted languages**, such as Python and Ruby, are higher-level languages that are executed by an interpreter at runtime. This layer abstracts away even more details from the underlying architecture, making it easier for developers to write and maintain code while retaining flexibility and ease of use. 

1. Python Code:
A high level human understandable language and structures for human mind to reason;

    ```python
    def multiply(a, b):
        return a * b
    ```
2. Compiled to Assembly:
Assembly language is a human-readable form of machine code that uses symbolic representations of operations and addresses. This layer abstracts away some
of the details of machine language but still requires expertise in programming for specific architectures.

    ```assembly
    MUL R1, R2  ; Multiply values in R1 and R2, store result
    RET         ; Return to caller
    ```

3. Machine Code
    ```
    MUL → 1010
    RET → 1100
    Final instruction: 1010 0001 0010 followed by 1100
    ```

**Each layer abstracts away the one below it.**

### Trade-offs

Each abstraction level has its trade-offs in terms of performance, control, and ease of use. For example, compiled languages provide faster performance but require more expertise to write and maintain code. Interpreted languages offer greater flexibility and ease of use but may have slower performance than compiled languages in certain applications. Framework/library abstractions provide reusable components for building systems quickly but may have limitations in terms of customization and control. High-level programming constructs provide a wide range of features for building complex systems but may require more expertise to write and maintain code.

|Layer|Pros|Cons|
|-----|----|-----|
|High-Level|Easy to write, read, maintain|Slower(extra translation steps)|
|Assembly|Faster, precise hardware control|Harder to write and debug|
|Machine Code|Direct CPU execution|Unreadable to humans|

### Key Principles of Abstraction


**1. Modularity:** Abstractions allow developers to write software that is modular and can be easily integrated into different systems.

**2. Flexibility:** Interpreted languages and frameworks provide a high degree of flexibility, allowing developers to quickly modify their code and adapt it to
different situations.

**3. Efficiency:** Compiled languages and frameworks provide faster performance than interpreted languages due to their lack of runtime overhead.

**4. Extensibility:** High-level programming constructs such as OOP and functional programming provide a high degree of extensibility, allowing developers to write complex systems with modular, reusable components.

**5. Readability:** High-level programming constructs are generally easier to read and understand than low-level machine code or assembly language, making them
more accessible to a wider range of developers.

### Conclusion
Abstraction is one of the core concepts in computer science, which enables us to build complex systems made of small simpler systems i.e components.


[^1]: https://godbolt.org