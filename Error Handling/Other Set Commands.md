# ⚙️ Advanced `set` Options in Bash

We’ve already learned `set -e`, `set -u`, and `set -x`.
Bash provides **additional options** that make scripts safer and more predictable.

---

## 🧠 Key Options

### 1️⃣ `set -o nounset` (Same as `set -u`)

* **Purpose:** Stops the script when you use an **uninitialized variable**.
* **Example:**

```bash
#!/usr/bin/env bash
set -o nounset   # Same as set -u

echo "The value of x is $x"
```

### Output:

```
./script.sh: line 4: x: unbound variable
```

---

### 2️⃣ `set -o errexit` (Same as `set -e`)

* **Purpose:** Exits the script immediately if **any command fails** (non-zero exit code).
* **Example:**

```bash
#!/usr/bin/env bash
set -o errexit   # Same as set -e

echo "This is a test"
non_existent_command
echo "This line will never run"
```

### Output:

```
This is a test
./script.sh: line 6: non_existent_command: command not found
```

The script stops after the failing command — preventing execution of the last `echo`.

---

### 3️⃣ `set -o pipefail`

* **Purpose:** Makes a pipeline return the **exit code of the first failing command** instead of just the last command.
* **Without `pipefail`:**

  ```bash
  cat non_existent_file | grep "something"
  echo $?  # Might return 0 if grep ran successfully, ignoring cat's failure
  ```
* **With `set -o pipefail`:**

  ```bash
  set -o pipefail
  cat non_existent_file | grep "something"
  echo $?  # Returns non-zero because cat failed
  ```

This ensures **pipeline failures are not silently ignored**.

---

## 💡 Key Takeaways

* **`set -o nounset` / `set -u`** → Catch undefined variables early.
* **`set -o errexit` / `set -e`** → Stop script immediately on any error.
* **`set -o pipefail`** → Fail the entire pipeline if *any* command in it fails.
* These options can be combined for robust scripts:

```bash
#!/usr/bin/env bash
set -euo pipefail
```

This combination is widely considered a **best practice** for safe, production-ready Bash scripts.

---

Would you like me to prepare a **one-page “Bash Safety Template”** for your GitHub notes, with `set -euo pipefail`, examples, and a short explanation of why it’s recommended? It would serve as a ready-to-use starting point for all your scripts.
