# ⚔️ Bash Battle Arena – Level 1: The Basics

## 🏹 Mission
Create a directory named **`Arena`** and then inside it, create three files:
- `warrior.txt`
- `mage.txt`
- `archer.txt`

Finally, list the contents of the `Arena` directory.

---

## 🧠 Solution

```bash
#!/usr/bin/env bash

# Step 1: Create a directory named Arena
mkdir Arena

# Step 2: Move into the Arena directory
cd Arena

# Step 3: Create the three files
touch warrior.txt mage.txt archer.txt

# Step 4: List the contents of the directory
ls
