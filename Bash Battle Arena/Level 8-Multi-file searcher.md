# ⚔️ Bash Battle Arena – Level 8: Multi-File Searcher

## 🏹 Mission

Write a script that:

1. Searches through all **`.log` files** in a given directory
2. Looks for a specific **word or phrase** (e.g., `"Error"`)
3. Outputs the **names of files** that contain that word/phrase

---

## 🧠 Solution

```bash
#!/usr/bin/env bash

directory="Arena"
search="Error"

searchword() {
    # Step 1: Check if directory exists
    if [ ! -d "$directory" ]; then 
        echo "Directory does not exist."
        exit 1
    fi

    # Step 2: Search for the word in all .log files
    grep -l "$search" "$directory"/*.log
}

# Call the function
searchword
```

---

## 🖼 Example Output

```
Arena/system.log
Arena/server.log
```

*(Only files containing the word `"Error"` are shown.)*

---

## ✅ What You Learned

* **`grep -l "pattern" files`** → Searches files and only outputs filenames that contain the pattern.
* **`$directory/*.log`** → Expands to all `.log` files in the specified directory.
* **Function wrapping (`searchword() { ... }`)** makes the script modular and reusable.
* **Error handling** with `if [ ! -d ]` prevents searching in a non-existent directory.

---
