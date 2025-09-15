# ⚔️ Bash Battle Arena – Level 4: File Manipulation

## 🏹 Mission

Create a script that copies **all `.txt` files** from the `Arena` directory
to a new directory called `Backup`.

---

## 🧠 Solution

```bash
#!/usr/bin/env bash

# Step 1: Create the Backup directory (if it doesn't exist)
mkdir -p Backup

# Step 2: Copy all .txt files from Arena to Backup
cp Arena/*.txt Backup/
```

## ✅ Key Details

* **`mkdir -p`** → Creates the directory only if it doesn’t exist (avoids errors).
* **`cp source destination`** → Copies files from source to destination.
* **`*.txt`** → Wildcard pattern to match all `.txt` files in a directory.

---

