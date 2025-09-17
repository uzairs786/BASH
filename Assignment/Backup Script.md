# 📂 Bash Challenge – Backup Script

## 🏹 Task

Write a script that:

1. Copies all **`.txt` files** from a specified directory to a backup directory
2. If the **backup directory** doesn’t exist, the script should **create it first**

---

## 🧠 Solution

```bash
#!/bin/bash

BACKUP="Backup"

if [ ! -d "$BACKUP" ]; then
    mkdir -p Backup
    cp *.txt Backup/
    echo "Backup Directory created and files copied."
else
    cp *.txt Backup/
    echo "Files copied to Backup Directory."
fi
```

---

## 🖼 Example Output

### Case 1: Backup directory does not exist

```
Backup Directory created and files copied.
```

### Case 2: Backup directory already exists

```
Files copied to Backup Directory.
```

---

## ✅ What You Learned

* **`[ ! -d "$BACKUP" ]`** → Checks if the directory does **not** exist.
* **`mkdir -p`** → Creates the directory if missing (no error if it already exists).
* **`cp *.txt Backup/`** → Copies all `.txt` files into the Backup directory.
* **Conditional logic** ensures files are copied whether the directory exists or not.

---

