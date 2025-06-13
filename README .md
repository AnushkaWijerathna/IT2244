# Operating-System-IT1224-p-
The Practical Records of Operating System IT1224(p) 

# C Programming Examples and Operating System Concepts

**Author**: 2021ICT14

This repository contains a comprehensive collection of C programming examples, ranging from fundamental language constructs and algorithms to advanced topics in operating system concepts, specifically process management using `fork()`. Each program is a self-contained `.c` file, designed for clarity and ease of understanding.

## Programs Included

Here's a categorized list of the C programs available in this repository:

### Basic C Concepts & Algorithms

1.  **Voting Eligibility (if-else)** (`1_voting.c`)
    * **Description**: A simple program that takes the user's age as input and determines if they are eligible to vote using an `if-else` statement.

2.  **Voting Eligibility (Ternary Operator)** (`2_voting_ternary.c`)
    * **Description**: Similar to the above, but demonstrates the use of the ternary operator for concise conditional checking of voting eligibility.

3.  **Day of the Week (Switch Case)** (`3_switch_day.c`)
    * **Description**: Takes a numerical input (1-7) and displays the corresponding day of the week using a `switch` statement.

4.  **Life Path Number Astrology (Switch Case)** (`4-switch_astro.c`)
    * **Description**: Calculates a "life path number" based on the user's birth date. It involves summing the digits of the date until a single digit (or specific master numbers) is reached, and then provides a small astrological interpretation using a `switch` statement.

5.  **Fibonacci Series** (`5_fobonacci.c`)
    * **Description**: Generates and prints the Fibonacci series up to a specified number of terms. The program takes the number of terms as input from the user and includes both iterative and recursive approaches with basic time complexity analysis.

6.  **Factorial Calculation** (`6_factorial.c`)
    * **Description**: Calculates the factorial of a given non-negative integer. This file demonstrates both iterative and recursive methods for factorial calculation and includes time complexity analysis.

7.  **String Concatenation** (`7_Concatenated_String.c`)
    * **Description**: Accepts two strings as input from the user, concatenates them, and displays the result.
    * **Note**: The original code snippet for this file uses `char` for `str1` and `str2` which is incorrect for string storage; they should be character arrays (e.g., `char str1[100];`). This may lead to runtime errors or undefined behavior if not corrected.

8.  **Binary to Decimal Conversion** (`8_Binary_To_Decimal.c`)
    * **Description**: Takes a binary number (as an integer) as input and converts it to its decimal equivalent.

9.  **Find Max and Min in Array** (`9_Max_Min.c`)
    * **Description**: Accepts an array of integers from the user and finds and displays the maximum and minimum values within the array.

10. **Pascal's Triangle** (`10_Pascal-Triangle.c`)
    * **Description**: Generates and prints Pascal's triangle up to a user-specified number of rows.

### Operating System Concepts: Process Management (`fork()`)

These programs demonstrate fundamental aspects of process management in a Unix-like environment, primarily using the `fork()` system call. They illustrate process creation, parent-child relationships, and inter-process waiting.

1.  **Simple Program with `sleep()` and `exit()`** (`ex.c`)
    * **Description**: A basic program that demonstrates the use of `sleep()` to pause execution for a specified duration and `exit()` for clean program termination.

2.  **Basic Fork with Parent Waiting** (`ex1.c`)
    * **Description**: Illustrates the fundamental `fork()` system call. The parent process creates a single child process and then waits for the child to complete using `wait()`, demonstrating how to retrieve the child's exit status.

3.  **Multiple Children with Ordered Waiting** (`ex2.c`)
    * **Description**: The parent process creates two child processes. It then waits for the first child to complete before creating the second, showcasing sequential execution of child processes from the parent's perspective.

4.  **Grandchild Process with Chained Waiting** (`ex3.c`)
    * **Description**: Demonstrates a parent-child-grandchild process hierarchy. The parent creates a child, which in turn creates a grandchild. The child waits for the grandchild, and the parent then waits for its child, illustrating a chain of `wait()` calls. Exit statuses are also captured and printed.

5.  **Unordered Child Completion with `wait()`** (`ex4.c`)
    * **Description**: The parent forks two children that complete at different times. The parent uses `wait()` to identify which child finishes first and second, demonstrating how `wait()` returns the PID of the terminated child.

6.  **Activity Program: Multi-Process Calculations** (`Activity.c`)
    * **Description**: This program takes a single integer `n` as input. It then creates a tree of processes to perform various calculations:
        * A first child process (`child1`) calculates the factorial of `n`.
        * `child1` then forks another child (`child5`) to calculate the Fibonacci term at position `n`.
        * The original parent process forks a second child (`child2`) to calculate 2 to the power of `n`.
        * The parent then forks a third child (`child3`) to calculate the square of `n`.
    * The parent and `child1` processes use `wait(NULL)` to wait for their direct children, creating a structured execution flow.

7.  **Process-based Factorial, Fibonacci, and Prime Check (Initial Attempt)** (`new 20.c`)
    * **Description**: This program attempts to create child processes to calculate factorial, generate Fibonacci, and check for prime numbers based on three user inputs (A, B, C).
    * **Note**: This file contains some logical and syntactical issues in its `fork()` structure and function calls. It aims for a structure where one child handles A, and another child handles both B and C.

8.  **Process-based Factorial, Fibonacci, and Prime Check (Improved Version)** (`new 23.c`)
    * **Description**: An improved and corrected version of `new 20.c`. It properly implements the creation of **three distinct child processes**:
        * Child A: Calculates the factorial of input `A`.
        * Child B: Generates the Fibonacci sequence up to `B` terms.
        * Child C: Checks if `C` is a prime number.
    * The parent process uses `wait(NULL)` repeatedly to ensure all child processes complete before the parent exits, preventing zombie processes.

9.  **Process-based Factorial, Fibonacci, and Prime Generation (Alternative Structure)** (`text1.c`)
    * **Description**: This program also uses `fork()` for concurrent execution of tasks (factorial, Fibonacci, and prime number generation).
    * **Note**: The process creation structure is different from `new 23.c`. One child handles factorial, another child handles Fibonacci, and the *parent process* (or the process that creates the Fibonacci child) then executes the prime number generation. The Fibonacci printing logic also has an initial uninitialized variable print. This version lacks explicit `wait()` calls in the main parent branch for the prime generation, which can lead to zombie processes for some children.

## How to Compile and Run

To compile and run any of these C programs, you will need a C compiler (like GCC). For programs involving `fork()` (all files in the "Operating System Concepts" section), you will need a Unix-like environment (Linux, macOS, WSL on Windows) to compile and run.

1.  **Open a terminal or command prompt.**

2.  **Navigate to the directory** where you have saved the `.c` file.

3.  **Compile the program** using GCC :

4.  **Run the executable**:


