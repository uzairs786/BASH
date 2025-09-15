# ❓ If Statements in Bash

`if` allows **decision-making** in scripts based on conditions.

---

## ✅ Basic Syntax

```bash
if [ condition ]
then
    # Code to run if condition is true
    echo "Hello"
fi
````

---

## 🔢 Number Comparison

```bash
age=25
if [ $age -gt 18 ]
then
    echo "You are an adult"
fi
```

---

## 🔡 String Comparison

```bash
name="Uzair"
if [ "$name" == "Uzair" ]
then
    echo "Hello Uzair"
fi
```

---

## 🧠 Logical Operators

```bash
grade=80
if [ $grade -ge 90 ] && [ $grade -le 100 ]
then
    echo "Excellent"
fi
```

> 💡 **Note:** This will not print anything because `80` is **not greater or equal to 90**.

---

## 🔎 Operators

### 📊 Numeric Comparison

| Operator | Meaning          |
| -------- | ---------------- |
| `-eq`    | equal to         |
| `-ne`    | not equal to     |
| `-gt`    | greater than     |
| `-lt`    | less than        |
| `-ge`    | greater or equal |
| `-le`    | less or equal    |

---

### 🔤 String Comparison

| Operator | Meaning               |
| -------- | --------------------- |
| `==`     | strings are equal     |
| `!=`     | strings are not equal |

---

### 🧩 Logical Operators

| Operator | Meaning                            |    |                                          |
| -------- | ---------------------------------- | -- | ---------------------------------------- |
| `&&`     | AND (both conditions must be true) |    |                                          |
| \`       |                                    | \` | OR (at least one condition must be true) |

---

### 📂 File Test Operators

| Operator  | True If…                              |
| --------- | ------------------------------------- |
| `-e file` | file exists (any type)                |
| `-f file` | file exists and is a **regular file** |
| `-d file` | file exists and is a **directory**    |
| `-s file` | file exists and is **not empty**      |
| `-r file` | file is readable                      |
| `-w file` | file is writable                      |
| `-x file` | file is executable                    |

> 💡 **Tip:** Always quote file paths like `"$file"` to avoid issues with spaces.

---

## 🔀 Else & Elif Clauses

* `else` → gives an alternative action when the `if` condition is false
* `elif` → allows multiple conditions to be checked in sequence

### Example:

```bash
age=16

if [ $age -gt 18 ]
then 
    echo "You are an adult"
elif [ $age -gt 13 ]
then
    echo "You are a Teenager"
else 
    echo "You are not a Teenager or Adult"
fi
```

---

## 🗝 Key Notes

* Always put **spaces** around `[ ]` (e.g., `[ $x -gt 5 ]`, not `[$x-gt5]`).
* Use `&&` and `||` to combine multiple conditions.
* Quote variables containing strings to avoid errors: `"$name"`.
* Use file test operators for safe file and directory checks.

```
