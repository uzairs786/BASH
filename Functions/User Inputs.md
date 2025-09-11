# 🖥️ Bash Scripting: User Input in Functions

User input makes your scripts **interactive** and **responsive** by asking the user for information or accepting data from parameters.

---

## 🔹 1. Using `read` to Capture User Input


    greet_user() {
      echo "What is your name?"
      read name        # waits for user input and stores it in 'name'
      echo "Hello, $name"
    }

    greet_user

## What happens:
- When running the script in your terminal, it will prompt the user: "What is your name?"
- The user inputs his name
- The function stores the input into `name`
- Prints `Hello, <name>`

## 🔹 2. Combining Parameters with User Input

    greet() {
      if [ $# -eq 0 ]; then   # If no parameters passed
        echo "What is your name?"
        read name
      else
        name=$1              # Take first parameter
      fi
      
      echo "Hello, $name"
      }
      
    greet        # Prompts user
    greet Uzair  # Skips prompt, uses parameter

## What happens:
- No arguments passed: Prompts the user - "What is your name?", stores the input into `name` and Prints, `Hello, <name>`
- Argument Passed: Uses the Argument and directly prints `Hello, <name>`

