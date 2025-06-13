# Operating-System-IT1224-P-
The Practical Records of Operating System IT1224(p) 

2021ICT68

# Message Queue Communication in C (System V IPC)

## 🧾 Description

The two programs are:
- **messageSend.c**: Sends a message into a message queue.
- **messageRec.c**: Receives a message from the message queue.

These demonstrate a basic example of one-way communication (sender → receiver) using a message queue.
- `messageSend.c` — Reads input from the user and sends it to the queue.
- `messageRec.c` — Receives and displays the message from the queue.

## 🛠️ How It Works

1. A unique key is generated using `ftok()`.
2. A message queue is created or accessed using `msgget()`.
3. The sender sends a message using `msgsnd()`.
4. The receiver reads the message using `msgrcv()`.
5. The receiver deletes the queue using `msgctl()`.

## 📌 Requirements

- GCC compiler
- Unix/Linux environment






