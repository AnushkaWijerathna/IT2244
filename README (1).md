# Shared Memory Communication in C

This project demonstrates how to use **System V** shared memory mechanisms for interprocess communication (IPC) in C on Linux. It includes three programs:

- `Day19Writer.c`: Writes user input to a shared memory segment.
- `Day19Reader.c`: Reads data from the shared memory segment.
- `Day19.c`: Demonstrates shared memory using `mmap()` and `fork()` for communication between a parent and child process.

---

## Files and Descriptions

### 1. `Day19Writer.c`
A writer program that:
- Creates a System V shared memory segment.
- Attaches to it.
- Takes user input and writes it to the shared memory.

### 2. `Day19Reader.c`
A reader program that:
- Attaches to the same shared memory segment.
- Reads the data written by the writer.
- Cleans up the shared memory segment after reading.

### 3. `Day19.c`
A standalone demonstration of:
- Using `mmap()` with `MAP_SHARED` and `MAP_ANONYMOUS`.
- Writing from a child process.
- Reading from a parent process.

---

## Compilation

```bash
gcc Day19Writer.c -o Day19Writer
gcc Day19Reader.c -o Day19Reader
gcc Day19.c -o Day19
```

---

