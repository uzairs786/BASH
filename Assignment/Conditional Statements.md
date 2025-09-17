# ⚔️ Bash Challenge – Conditional Statements

## 🏹 Task

Write a script that:

1. Checks if a file exists
2. Prints a message indicating whether it exists or not
3. If it exists, check if the file is:

   * **Readable**
   * **Writable**
   * **Executable**

---

## 🧠 Solution

```bash
#!/bin/bash

if [ ! -f "$FILE" ]; then
    echo "This file does not exist."
else
    echo "This file exists."
    
    if [ -r "$FILE" ]; then
        echo "This file exists and is readable"
    fi 
    
    if [ -w "$FILE" ]; then
        echo "This file exists and is writeable"
    fi 
    
    if [ -x "$FILE" ]; then 
        echo "This file exists and is executable"
    fi  
fi
```

---

## 🖼 Example Output

### Case 1: File does not exist

```
This file does not exist.
```

### Case 2: File exists and has multiple permissions

```
This file exists.
This file exists and is readable
This file exists and is writeable
This file exists and is executable
```

---

## ✅ What You Learned

* **`[ -f "$FILE" ]`** → Checks if a regular file exists.
* **`[ -r "$FILE" ]`** → Checks if file is **readable**.
* **`[ -w "$FILE" ]`** → Checks if file is **writable**.
* **`[ -x "$FILE" ]`** → Checks if file is **executable**.
* Nesting conditions lets you perform **permission checks only if the file exists**.

