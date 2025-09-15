# 🏁 Exit Codes in Bash – Understanding Script Outcomes

Exit codes are **numerical values** returned when a command or script finishes.
They tell the system (and you) whether the command succeeded or failed.

---

## 🧠 Key Concepts

* **Exit Code 0** → ✅ Success
* **Exit Code > 0** → ❌ Error (1 is the most common)

You can check the exit code of the **last executed command** with:

```bash
echo $?
```

---

## 🖥️ Terminal Demo

```bash
ls
echo $?   # Prints 0 (success)

nonexistent
# bash: nonexistent: command not found
echo $?   # Prints non-zero (e.g., 127)
```

---

## 📝 Example Script: Checking if `git` is Installed

```bash
#!/usr/bin/env bash

# Check if 'git' exists (suppress output & errors)
command -v git 2>/dev/null 

# Check the exit code of the last command
if [[ $? -ne 0 ]]; then
  echo "git is not installed. Please install git."
  exit 1
else
  echo "git is installed."
fi
```

---

### 🔎 Breakdown

1. **`command -v git`** → checks if `git` is available on the system.
2. **`2>/dev/null`** → discards both standard output and error messages.
3. **`$?`** → stores the exit code of the previous command.
4. **`if [[ $? -ne 0 ]]`** → if exit code is not `0`, `git` is missing → print message & `exit 1`.
5. **Else branch** → if exit code is `0`, confirm that `git` is installed.

---

## 🖼 Example Run

### Case 1: `git` is installed

```
git is installed.
```

Exit code: `0` ✅

### Case 2: `git` is not installed

```
git is not installed. Please install git.
```

Exit code: `1` ❌

---

## 💡 Key Takeaways

* **Exit codes let you chain logic** (if something fails, stop or handle it).
* **0 = success, non-zero = failure** is the universal convention.
* Always check exit codes when running commands that may fail — this makes scripts more **reliable** and **predictable**.

