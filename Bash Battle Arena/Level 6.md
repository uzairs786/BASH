# ⚔️ Bash Battle Arena – Level 6: Argument Parsing

## 🏹 Mission

Write a script that:

1. Accepts a **filename** as an argument
2. Prints the **number of lines** in that file
3. If **no filename** is provided, display:

   ```
   No file provided.
   ```

---

## 🧠 Solution

```bash
#!/usr/bin/env bash

filename() {
    if [ $# -eq 0 ]; then
        echo "No file provided."
    else
        file=$1
        awk 'END {print NR}' "$file"
    fi
}

filename log.txt
```

---

## 🖼 Example Output

### Case 1: Filename not provided

```
No file provided.
```

### Case 2: Filename provided (e.g. log.txt)

```
42
```

*(Where `42` is the number of lines in `log.txt`)*

---

## ✅ What You Learned

* **`$#`** → Number of arguments passed to a function or script.
* **Check arguments:**

  * `if [ $# -eq 0 ]` → Runs when no arguments are provided.
* **Access arguments:**

  * `$1` → Refers to the **first argument**.
* **`awk 'END {print NR}' file`** → Counts and prints the number of lines in a file.

---
