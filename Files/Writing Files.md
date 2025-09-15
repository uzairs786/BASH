# 📝 Writing Files in Bash

Writing to files in Bash allows you to **create, modify, or append data** from your scripts.

---

## 🧠 Key Concepts

* **`>` (single redirect)** → Creates a file or overwrites its contents.
* **`>>` (append redirect)** → Adds data to the end of the file without removing existing content.

---

## 📝 Example: Writing Data with a Function

```bash
#!/usr/bin/env bash

writeToFile() {
  local filePath=$1
  local data=$2

  # Overwrite file contents
  echo "$data" > "$filePath"
}

# Example usage:
writeToFile "read.txt" "Hello World"
```

After running, `read.txt` will contain:

```
Hello World
```

> **Note:** If `read.txt` already had data, it will be replaced.

---

## 📝 Example: Appending Data

```bash
writeToFile() {
  local filePath=$1
  local data=$2

  # Append data instead of overwriting
  echo "$data" >> "$filePath"
}

# Example usage:
writeToFile "read.txt" "Hello Again"
```

If `read.txt` already contained `Hello World`, after running:

```
Hello World
Hello Again
```

---

## 💡 Key Takeaways

| **Operator** | **Effect**                                                                            |
| ------------ | ------------------------------------------------------------------------------------- |
| `>`          | Creates a new file if it doesn’t exist, or **overwrites** an existing file’s contents |
| `>>`         | **Appends** new data to the end of the file without removing existing contents        |

---

Would you like me to add a **best practice note** on safely writing to files (e.g. using `tee`, checking if the file exists before overwriting)? This can prevent accidental data loss in production scripts.
