# 🧮 Bash Challenge – Basic Arithmetic

## 🏹 Task

Write a script that:

1. Takes **two numbers** as input (from user or as arguments)
2. Performs **addition, subtraction, multiplication, and division**
3. Displays all results in the terminal

---

## 🧠 Solution

```bash
#!/usr/bin/env bash

arithmetic() {
    if [ $# -eq 0 ]; then
        echo "Please input 2 numbers"
        read numbers
    else 
        num1=$1 
        num2=$2

        # Validate inputs (must be numbers)
        if [[ ! $num1 =~ ^[0-9]+$ ]] || [[ ! $num2 =~ ^[0-9]+$ ]]; then
            echo "Invalid input, please provide a number."
            return 1
        fi

        # Perform operations
        addition=$(( num1 + num2 ))
        subtraction=$(( num1 - num2 ))
        multiplication=$(( num1 * num2 ))

        if (( num2 == 0 )); then
            division="Cannot divide by zero."
        else
            division=$(( num1 / num2 ))
        fi
    fi

    # Display results
    echo "Addition: $addition"
    echo "Subtraction: $subtraction"
    echo "Multiplication: $multiplication"
    echo "Division: $division"
}

# Example run with arguments
arithmetic 10 2
```

---

## 🖼 Example Output

```
Addition: 12
Subtraction: 8
Multiplication: 20
Division: 5
```

---

## ✅ What You Learned

* **Arithmetic in Bash:**

  * `$(( expression ))` → Used for math operations.
* **Input validation:**

  * Regex `[[ ! $num =~ ^[0-9]+$ ]]` ensures values are numbers.
* **Division check:**

  * Always check for divide-by-zero to avoid errors.
* Functions can accept **user input** (via `read`) or **arguments** (via `$1`, `$2`).

---

