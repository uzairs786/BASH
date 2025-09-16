# ⚔️ Bash Battle Arena – Level 7: File Sorting Script

## 🏹 Mission

Write a script that:

1. Looks inside the **Arena** directory
2. Finds all **`.txt` files**
3. Sorts them by **file size** (from smallest → largest)
4. Displays the sorted list with size and filename

---

## 🧠 Solution

```bash
#!/usr/bin/env bash

DIRECTORY="Arena"

# Step 1: Check if Arena exists
if [ ! -d "$DIRECTORY" ]; then 
    echo "Directory does not exist."
    exit 1
fi

# Step 2: Find all .txt files, list sizes, sort by size, and print neatly
find "$DIRECTORY" -type f -name "*.txt" -exec ls -lh {} + \
  | sort -k 5,5 -h \
  | awk '{ print $5, $9 }'
```

---

## 🖼 Example Output

```
1K Arena/mage.txt
2K Arena/archer.txt
5K Arena/warrior.txt
```

---

## ✅ What You Learned

* **`if [ ! -d "$DIRECTORY" ]`** → Checks if a directory does not exist.
* **`find`** → Searches for files:

  * `-type f` → Only files
  * `-name "*.txt"` → Only `.txt` files
* **`ls -lh`** → Lists file details in human-readable sizes (K, M, G).
* **`sort -k 5,5 -h`** → Sorts by the 5th column (file size), using human-readable units.
* **`awk '{ print $5, $9 }'`** → Prints only the **size** and **filename**.

---

