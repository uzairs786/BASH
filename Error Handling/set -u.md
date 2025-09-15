# 🛡️ `set -u` in Bash – Catch Uninitialized Variables

The `set -u` option makes your script **exit immediately** if you try to use an **undefined (uninitialized) variable**.

---

## 🧠 Key Concept

* Normally, Bash treats undefined variables as empty strings — which can cause **silent bugs**.
* **`set -u`** (or `set -o nounset`) prevents this by stopping the script and showing an error.
* This helps you catch **typos**, **missing data**, or **forgotten variable assignments** early.

---

## 📝 Example 1: Simple Case

```bash
#!/usr/bin/env bash
set -u   # Stop on uninitialized variables

echo "The value of variable x is $x"
```

### Expected Output:

```
./script.sh: line 4: x: unbound variable
```

The script stops immediately because `x` was never defined.

---

## 📝 Example 2: Arithmetic with Missing Variable

```bash
#!/usr/bin/env bash
set -u

x=10
y=20
z=$(( x + y + w ))  # w is not defined!

echo "z = $z"
```

### Expected Output:

```
./script.sh: line 6: w: unbound variable
```

Even though `x` and `y` are defined, the script stops when it encounters the missing `w`.

---

## 💡 Key Takeaways

* ✅ **Use `set -u`** to catch uninitialized variables and avoid hard-to-debug issues.
* ✅ Especially helpful for scripts relying on **environment variables** or **user input**.
* 🛠️ If you intentionally allow empty variables, you can use a default value with parameter expansion:

  ```bash
  echo "The value is ${x:-default_value}"
  ```

  This avoids errors while still being explicit about missing values.

---

Would you like me to also include `set -euo pipefail` (a common best practice combining `set -e`, `set -u`, and safer pipe handling) in your GitHub notes?
It’s a great “gold standard” setup for writing robust Bash scripts.
