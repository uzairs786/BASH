# 🔑 `return` vs `exit` in Bash

### 1️⃣ **`return`**

* **Used inside functions**.
* Ends the function and passes an **exit status (numeric value)** back to the caller.
* Does **not stop the whole script**, just the function.
* Typical convention:

  * `return 0` → success
  * `return 1` (or any non-zero number) → failure/error

Example:

```bash
validate_age() {
  if (( $1 < 18 )); then
    echo "Too young"
    return 1   # ❌ Function failed
  fi

  echo "Eligible"
  return 0     # ✅ Function succeeded
}

validate_age 20
echo $?  # Prints 0 because the function returned 0
```

---

### 2️⃣ **`exit`**

* **Used to terminate the entire script** immediately.
* You pass an exit code to indicate whether the script succeeded or failed.
* Exit code conventions:

  * `exit 0` → script ended successfully
  * `exit 1` (or any non-zero code) → script ended with error

Example:

```bash
echo "Starting script..."

if [[ -z "$1" ]]; then
  echo "No argument provided!"
  exit 1   # ❌ Stop script entirely with error status
fi

echo "Argument was provided!"
exit 0     # ✅ End script successfully
```

---

## 🔎 **Key Differences**

| Aspect               | `return`                              | `exit`                                                     |
| -------------------- | ------------------------------------- | ---------------------------------------------------------- |
| **Scope**            | Ends **only the function**            | Ends the **whole script**                                  |
| **Common Use**       | Used for function status codes        | Used for script status codes                               |
| **Effect on Script** | Script continues after the function   | Script stops completely                                    |
| **Exit Status**      | Available in `$?` after function call | Available in `$?` after script ends (or in parent process) |

---

## 💡 Best Practice

* **Use `return` inside functions** to communicate success/failure.
* **Use `exit` at the top level** if you want to terminate the script early (e.g., due to a fatal error).

---

## 🖼️ Visual Example

Imagine you have this script:

```bash
check_number() {
  if [[ $1 -lt 10 ]]; then
    echo "Number too small"
    return 1
  fi
  echo "Number is OK"
  return 0
}

echo "Checking number..."
check_number 5 || exit 1   # if function fails, exit the script

echo "This will not run if number < 10"
```

### Run with `5`:

```
Checking number...
Number too small
```

Script ends because `exit 1` was called.

### Run with `20`:

```
Checking number...
Number is OK
This will not run if number < 10
```

Function returned `0`, so the script continues.

