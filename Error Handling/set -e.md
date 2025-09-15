# ⚡ `set -e` in Bash – Stop on First Error

The `set -e` option makes your script **exit immediately** when any command returns a **non-zero exit code** (an error).

---

## 🧠 Key Concept

* Normally, Bash scripts keep running even if a command fails.
* **`set -e`** forces the script to **stop at the first error**, preventing it from continuing in an invalid state.
* This is helpful for making scripts **fail-fast** and avoiding hidden problems later in execution.

---

## 📝 Example Script

```bash
#!/usr/bin/env bash
set -e   # Stop script immediately on error

echo "Before the script"

non_existent_command  # This fails and stops the script

echo "After the script"  # This line is never executed
```

---

## 🖼 Example Run

### Output:

```
Before the script
./script.sh: line 7: non_existent_command: command not found
```

* The script **stops at the failing command**.
* `"After the script"` is never printed because the script exits immediately.

---

## 💡 Key Takeaways

* ✅ **Use `set -e`** when you want your script to stop immediately after any error.
* ✅ Helps prevent scripts from running into **unintended behavior** after a failure.
* ⚠️ **Be careful**: sometimes you *expect* a non-zero exit code (e.g., checking if a file exists).
  In those cases, you should **not rely only on `set -e`** — instead handle errors manually using `if`, `||`, or `trap`.

---

Would you like me to also include a short snippet showing **how to temporarily disable `set -e` for a specific command** (so you can safely run something that might fail without stopping the script)? This is a common real-world scenario.
