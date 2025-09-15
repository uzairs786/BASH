# ⚔️ Bash Battle Arena – Level 5: The Boss Battle (Combining Basics)

## 🏹 Mission

Combine what you've learned! Write a script that:

1. Creates a directory named **`Battlefield`**
2. Inside `Battlefield`, create files:

   * `knight.txt`
   * `sorcerer.txt`
   * `rogue.txt`
3. Check if `knight.txt` exists

   * If it does, move it to a new directory called **`Archive`**
   * Print a confirmation message
4. List the contents of **both** `Battlefield` and `Archive`

---

## 🧠 Solution

```bash
#!/usr/bin/env bash

# Step 1: Create the Battlefield directory
mkdir Battlefield

# Step 2: Create the files inside Battlefield
touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt

# Step 3: Check if knight.txt exists and move it
if [ -f "Battlefield/knight.txt" ]; then
    mkdir -p Archive
    mv Battlefield/knight.txt Archive/
    echo "knight.txt has been moved to Archive."
else
    echo "knight.txt not found."
fi

# Step 4: List the contents of both directories
cb=$(ls Battlefield)
echo "Contents of Battlefield: $cb"

ca=$(ls Archive)
echo "Contents of Archive: $ca"
```

---

## 🖼 Example Output

```
knight.txt has been moved to Archive.
Contents of Battlefield: sorcerer.txt rogue.txt
Contents of Archive: knight.txt
```

---

## ✅ What You Learned

* **`mkdir`** → Creates a new directory.
* **`mkdir -p`** → Creates a directory **only if it doesn’t exist** (no error if the directory already exists).

  * Example: `mkdir -p Archive` is safe to run multiple times.
* **`touch file1 file2 file3`** → Creates multiple files in a single command.
* **`if [ -f "file" ]`** → Checks if a file exists before taking action.
* **`mv source destination`** → Moves a file from one location to another.
* **Command substitution (`$(...)`)** → Captures the output of a command so you can use it in `echo` or other commands.

---

You’ve defeated the **first boss** of the Bash Battle Arena! 🏆
This level shows how to combine **directory creation, file creation, conditionals, file movement, and command substitution** into one functional script.

---

Would you like me to expand this further by adding **error handling** (e.g. check if `Battlefield` already exists, or if there are no `.txt` files to move) to make it a more production-ready solution?
