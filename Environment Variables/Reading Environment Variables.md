# 🌱 Reading Environment Variables

Environment variables are **key-value pairs** that store useful system information and configuration settings.
They act like **global variables** available to your shell and scripts.

---

## 🧠 Key Concept

* Environment variables hold information like:

  * Home directory
  * Current user
  * Operating system type
* Access them with the `$` symbol followed by the variable name (always uppercase).

---

## 📝 Example: Reading Environment Variables

```bash
#!/usr/bin/env bash

echo "Home directory: $HOME"
echo "Current user: $USER"
echo "Operating system type: $OSTYPE"
```

### Sample Output:

```
Home directory: /users/uzair
Current user: uzair
Operating system type: darwin21
```

---

## 📝 Assigning to Local Variables

You can store environment variable values in your own **local variables** for convenience:

```bash
#!/usr/bin/env bash

my_home="$HOME"
my_user="$USER"
my_OS="$OSTYPE"

echo "Home directory: $my_home"
echo "Current user: $my_user"
echo "Operating system type: $my_OS"
```

Result is the **same as using `$HOME`, `$USER`, `$OSTYPE` directly**, but now your script can reference them by the local variable names.

---

## 💡 Key Takeaways

* ✅ Environment variables are **always uppercase** (by convention).
* ✅ Access them with `$VARIABLE_NAME`.
* ✅ You can **assign them to local variables** for readability and easier reuse.
* 🔑 Common environment variables include:

  * `HOME` → User’s home directory
  * `USER` → Logged-in username
  * `OSTYPE` → OS information
