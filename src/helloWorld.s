// Provide program starting address to linker
.global _start
.align 2

// Setup the parameters to print hello world and execute it
_start:  mov X0,  #1          // Use 1 for StdOut
        adr X1,  helloworld         // Print Hello World string
        mov X2,  #13     // Length of Hello World string
        mov X16, #4          // MacOS write system call
        svc #0               // Call *nix to output the string

// Setup the parameters to exit the program and execute it
        mov X0,  #0          // Use 0 for return code
        mov X16, #1          // MacOS terminate program
        svc #0               // Call MacOS to terminate the program

// Define the Hello World string and calculate length
helloworld:    .ascii  "Hello, ARM64!\n"
