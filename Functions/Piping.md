# ⛓️ Piping

---

## 🧠 Key Concepts

* **Piping (`|`)** connects commands so that the **output** of one command becomes the **input** for the next.
* You can use piping **inside functions** and even **store the results** in variables for later use.
* Piping lets you build powerful **data-processing pipelines** right in your scripts.

---

## 📝 Example 1: Counting Files in a Directory

### Code Example

```bash
#!/usr/bin/env bash

getFileCount() {
  local directory=$1
  local fileCount=$(ls "$directory" | wc -l)

  echo "The number of files in $directory is $fileCount files."
}

# Call the function with the current directory
getFileCount "./"
```

### Breakdown

1. **Function definition:** `getFileCount` takes a parameter (directory).
2. **Local variables:**

   * `directory=$1` → stores the parameter.
   * `fileCount=$(...)` → uses command substitution to run `ls` and `wc -l`.
3. **Pipe usage:**
   `ls "$directory" | wc -l` → lists files, then counts the lines to get the number of files.
4. **Output:** Prints the result back to the user.

### Sample Output

```
The number of files in ./ is 13 files.
```

---

## 📝 Example 2: Searching Logs with `grep` + `awk`

### Code Example

```bash
searchLogs() {
  local searchTerm=$1

  grep "$searchTerm" log.txt | awk '{print $2}'
}

# Call the function, searching for "error"
searchLogs "error"
```

### Breakdown

1. **Function definition:** `searchLogs` takes a search term as a parameter.
2. **Local variable:** `searchTerm=$1`.
3. **Pipeline:**

   * `grep "$searchTerm" log.txt` → finds lines containing the search term.
   * `awk '{print $2}'` → extracts and prints the second column from those lines.
4. **Usage:**
   `searchLogs "error"` prints only the second column of matching lines.

### Sample Output

```
12:05:12
12:12:36
```

---

## 💡 Key Takeaways

* **Pipe symbol (`|`)** lets you chain commands together.
* Inside a function, you can **capture piped results** into a variable using command substitution:

  ```bash
  result=$(command1 | command2)
  ```
* Piping makes it easy to combine multiple tools (`ls`, `wc`, `grep`, `awk`) into a single, efficient workflow.
* You can mix piping with functions to create **modular, reusable data-processing pipelines**.

---

Would you like me to also include a **diagram-style flow (ASCII or Mermaid)** to visually show how the data flows from `ls` → `wc -l` and from `grep` → `awk`?
That would make your GitHub notes even more engaging.
