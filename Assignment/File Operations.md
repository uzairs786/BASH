# 📂 Bash Challenge – File Operations

## 🏹 Task

Write a script that:

1. Creates a **directory**
2. Navigates into it
3. Creates a **file** inside it
4. Writes some **text** into the file
5. Displays the **contents of the file**

---

## 🧠 Solution

```bash
#!/bin/bash

mkdir -p newdirectory
cd newdirectory

writetofile () {
    local filepath=$1
    local data=$2

    echo "$data" > "$filepath"
}

writetofile "hello.txt" "Hello World"
display=$(cat hello.txt)

echo "The contents of the file are: $display"
```

---

## 🖼 Output

```
The contents of the file are: Hello World
```

---

## ✅ What I Learned

* **`mkdir -p`** → Creates the directory (no error if it already exists).
* **`cd newdirectory`** → Moves into the new directory.
* **Function with parameters** → `writetofile` takes a filename and text.
* **`>` redirection** → Writes text into a file (overwrites if it exists).
* **`cat`** → Displays file contents.

---
