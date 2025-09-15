# 📂 Reading Files in Bash

Reading files is a common scripting task — it allows you to process data line by line and perform custom logic on each line.

---

## 🧠 Key Concepts

* You can read files **line by line** using:

  1. **Input redirection with `while read`**
  2. **`cat` piped into a `while read` loop**

Both methods let you process file content in a controlled way.

---

## 📝 Example 1: Using Redirection with `while read` (Preferred)

```bash
#!/usr/bin/env bash

readFile() {
  local file_path=$1

  while IFS= read -r line; do
    echo "$line"
  done < "$file_path"
}

# Call function with a file path
readFile "./log.txt"
```

* `IFS=` → Preserves leading/trailing whitespace
* `read -r` → Prevents `\` from being interpreted as escape characters
* `< "$file_path"` → Redirects file content into the `while` loop

---

## 📝 Example 2: Using `cat` + `while read`

```bash
#!/usr/bin/env bash

processFile() {
  local file_path=$1

  cat "$file_path" | while IFS= read -r line; do
    echo "Processing line: $line"
    # Add custom processing logic here
  done
}

# Call function
processFile "./log.txt"
```

This approach is very similar but uses `cat` to output the file contents and **pipes** them into the `while` loop.

---

## 💡 Key Takeaways

| **Method**              | **How it Works**                                    | **When to Use**                                                                             |
| ----------------------- | --------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| **Redirection (`<`)** ✅ | Reads file directly into `while read` loop          | **Preferred method** — more efficient, avoids subshell issues                               |
| **`cat` + pipe**        | Sends file output through a pipeline before reading | Good when you need to process the file through another command first (e.g., `grep`, `sort`) |

---

## 🏆 Best Practice Note

* **Prefer input redirection (`<`) over `cat | while read`** when reading a file line by line.
* **Reason:**

  * `cat | while read ...` runs the `while` loop in a **subshell**, meaning variables modified inside the loop are not accessible outside it.
  * Redirection `<` runs the `while` loop in the **current shell**, preserving variable changes.
  * It’s also slightly more efficient since it avoids spawning an extra `cat` process.
