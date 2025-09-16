# 🖥️ Bash Scripting: User Input in Functions

User input makes your scripts **interactive** and **responsive** by either:

* Prompting the user directly (with `read`)
* Or accepting input through **parameters** when calling a function

---

## 🔹 1. Using `read` to Capture User Input

```bash
greet_user() {
  echo "What is your name?"
  read name        # waits for user input and stores it in 'name'
  echo "Hello, $name"
}

greet_user
```

### ✅ What happens:

1. Script prompts: **`What is your name?`**
2. User types their name (e.g. `Uzair`)
3. Input is stored in variable `name`
4. Script prints: **`Hello, Uzair`**

---

## 🔹 2. Combining Parameters with User Input

```bash
greet() {
  if [ $# -eq 0 ]; then       # If no parameters passed
    echo "What is your name?"
    read name
  else
    name=$1                   # Take first parameter
  fi

  echo "Hello, $name"
}

greet        # Prompts user
greet Uzair  # Skips prompt, uses parameter
```

### ✅ What happens:

* **No arguments passed:**

  * Prompts user: *"What is your name?"*
  * Stores input into `name`
  * Prints **`Hello, <name>`**
* **Argument passed:**

  * Uses parameter directly (skips prompt)
  * Prints **`Hello, Uzair`**

---


