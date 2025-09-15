# ⚔️ Bash Battle Arena – Level 3: Conditional Statements

## 🏹 Mission
Write a script that checks if a file named **`hero.txt`** exists in the `Arena` directory.  

- If it exists → print: **`Hero found!`**  
- Otherwise → print: **`Hero missing!`**

---

## 🧠 Solution

```bash
#!/usr/bin/env bash

if [ -f "Arena/hero.txt" ]; then
    echo "Hero found!"
else
    echo "Hero missing!"
fi
