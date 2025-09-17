# 🗂️ Bash Challenge – Selective Backup Script

## 🏹 Challenge

Create a simple shell script that automates a common task.
For this challenge, we’ll build a **selective backup script** that:

1. Asks the user what type of file they want to back up (e.g. `txt`, `sh`, `log`)
2. Searches for all files of that type in the current directory
3. Copies them into a **Backup** directory
4. If no such files exist, it prints a friendly message

---

## 🧠 Solution

```bash
#!/bin/bash

inputfile_type() {
    echo "What type of file would you like to backup?"
    read filetype
    
    if ls -R *."$filetype" 2>/dev/null; then
        mkdir -p Backup
        cp *."$filetype" Backup/
        echo "All .$filetype files have been backed up."
    else
        echo "No .$filetype files exist."
    fi
}

inputfile_type
```

---

## 🖼 Example Run

```
What type of file would you like to backup?
txt       # User inputs the file type

file1.txt
file2.txt
All .txt files have been backed up.
```

### Case: No files of that type exist

```
What type of file would you like to backup?
pdf
No .pdf files exist.
```

---

## ✅ What You Learned

* **User Input (`read`)** → Makes the script interactive.
* **`ls -R *."$filetype"`** → Searches for files of a given extension.
* **`mkdir -p Backup`** → Creates the Backup directory if it doesn’t already exist.
* **`cp *."$filetype" Backup/`** → Copies all matching files to Backup.
* Error handling ensures you get a clear message if no files of that type are found.

---

⚡ This script makes **backups flexible** — you decide the file type each time you run it.

