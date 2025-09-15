# ⚔️ Bash Battle Arena – Level 2: Variables and Loops

## 🏹 Mission
Create a script that outputs the numbers **1 to 10**, one number per line.

---

## 🧠 Solution

```bash
#!/usr/bin/env bash

# Loop through numbers 1 to 10 using seq
for number in $(seq 1 10)
do 
    echo "$number"
done
