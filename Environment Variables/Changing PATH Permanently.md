# 🌍 Modifying the PATH Environment Variable (Permanently)

The `PATH` environment variable tells your shell **where to look for executables**.
By adding a custom directory to `PATH`, you can run your own scripts from **anywhere**, without typing `./`.

---

## 🧠 Key Concept

* **Temporary PATH changes** only last for the current terminal session.
* **Permanent PATH changes** are made by adding them to your shell configuration file:

  * `~/.zshrc` for Zsh users
  * `~/.bashrc` for Bash users

---

## 📝 Step-by-Step Example

### 1️⃣ Create a Custom Scripts Directory

```bash
mkdir ~/my-scripts
```

### 2️⃣ Add a Script to the Directory

```bash
vi ~/my-scripts/hello-world.sh
```

Inside the file:

```bash
#!/bin/bash
echo "Hello World"
```

Save & exit (`:wq!`), then make it executable:

```bash
chmod +x ~/my-scripts/hello-world.sh
```

---

### 3️⃣ Add Directory to PATH Permanently

Append this line to `~/.zshrc` (or `~/.bashrc` if using Bash):

```bash
echo 'export PATH="$PATH:~/my-scripts"' >> ~/.zshrc
```

---

### 4️⃣ Reload Shell Configuration

```bash
source ~/.zshrc
```

---

### 5️⃣ Test From Anywhere

```bash
hello-world.sh
```

✅ Should print `Hello World` even if you are in a different directory.

---

## 🖼 Example Output

```
Hello World
```

Now you can run `hello-world.sh` from any directory — no need for `./`.

---

## 💡 Key Takeaways

* **Use `PATH` wisely** to make your scripts globally available.
* **Edit the right file**:

  * `~/.zshrc` → Zsh users
  * `~/.bashrc` → Bash users
* **Reload or restart** your shell to apply changes.
* This change is **persistent**, surviving reboots and new shell sessions.

---

Would you like me to prepare a **reusable snippet** for your GitHub notes that shows how to safely check if a directory is already in `PATH` before appending it (to avoid duplicates)? That’s a good best practice for production setups.
