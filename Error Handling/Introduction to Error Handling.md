# ⚠️ Introduction to Error Handling

Error handling is about **anticipating where your script might fail** and taking steps to handle those situations gracefully — instead of letting the script crash or behave incorrectly.

---

## 🧠 Key Concepts

* **Error handling** makes scripts **robust** and **reliable**.
* Instead of letting an error stop your script without explanation, you:

  * Detect the issue.
  * Show a **helpful error message**.
  * Exit gracefully with a **non-zero exit code** (to indicate failure).

---

## 📝 Example: Division by Zero

### ❌ Without Error Handling

```bash
#!/usr/bin/env bash

num1=10
num2=0

result=$(( num1 / num2 ))
echo "Result is $result"
```

**Problem:**
Dividing by zero causes a runtime error → script crashes.

---

### ✅ With Error Handling

```bash
#!/usr/bin/env bash

num1=10
num2=0

if [[ $num2 -eq 0 ]]; then
  echo "Error: Division by 0 is not allowed."
  exit 1
fi

result=$(( num1 / num2 ))
echo "Result is $result"
```

**What Changed:**

* **Check first:** `if [[ $num2 -eq 0 ]]`
* **Handle gracefully:**

  * Print clear error message
  * `exit 1` (stop script with non-zero code)

---

## 🖼 Example Output

### Before:

```
bash: division by 0 (error message)
Script crashes
```

### After:

```
Error: Division by 0 is not allowed.
```

✅ Script exits cleanly with a clear message.

---

## 💡 Key Takeaways

* **Anticipate failure points** (e.g., division by zero, missing files, bad user input).
* **Use conditions** to check before performing risky operations.
* **Provide clear feedback** when errors occur.
* **Exit with a non-zero code** so calling processes or users know something went wrong.
