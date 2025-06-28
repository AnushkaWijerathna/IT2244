# IT2244
Operating Systems (P)

# Pipe Communication in C

This repository contains two C programs demonstrating **interprocess communication (IPC)** using **pipes**.

## Files

### 1. `code.c`
This program writes three messages to a pipe and reads them back.

#### Functionality:
- The parent process writes three strings into the pipe.
- Then, it reads them back and prints them.

#### Compilation and Execution:
```bash
gcc file_name.c -o file_name
./file_name
```

#### Sample Output:
```
Hello, world #1
Hello, world #2
Hello, world #3
```
![Screenshot 2025-06-28 182116](https://github.com/user-attachments/assets/f90b26b2-9f9e-407d-bcd1-e0ecda702136)

---

### 2. `exercise.c`
This program demonstrates pipe communication between a parent and a child process.

#### Functionality:
- The parent process collects user input for:
  - Name
  - Registration Number
  - Age
- The parent sends this information to the child via a pipe.
- The child process reads the data from the pipe and prints it.

#### Compilation and Execution:
```bash
gcc file_name.c -o file_name
./file_name
```

#### Sample Interaction:
```
Enter name: Anushka
Enter registration number: 2021ict68
Enter age: 25

Child Process Output:
Name: Anushka
Registration Number: 2021ict68
Age:

```
![Screenshot 2025-06-28 182228](https://github.com/user-attachments/assets/2478d88c-6783-4e9d-badc-957a7aaed9d2)
---

## Requirements

- GCC Compiler
- Unix-like OS (Linux, macOS, WSL)

---
