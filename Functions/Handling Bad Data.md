# 👎 Handling Bad Data
---
Bad data refers to invalid or unexpected user inputs that may cause errors or undesired behaviour in our scripts. 

`if` statements can be used to check if inputs are valid

## Step-by-Step Breakdown

1. **Define a Function:** `validate_age`

        validate_age() {
           local age=$1
           ...
        } 

2. **Check if Age is a Number**

        if [[ ! $age=~ ^[0-9]+$ ]]; then
           echo "Invalid age, please provide a number"
           return 1
        fi
- `[[ ! $age=~ ^[0-9]+$ ]]` checks if `age` only has numerical values
- The `!` negates the condition, so it is triggered if the input is NOT NUMERIC
- If input is not numeric, it would print the error message
- `return 1` (non-zero=error)

3. **Check if Age is Less Than 18**

        if (( age < 18 )); then
          echo "Sorry, you must be 18 years old at least."
          return 1
        fi
- (( age < 18 )) - Arithmetic Comparison
- If the number inputted is less than 18 it would show the error message
- `return 1`

**If Valid (more than 18):**

        echo "Congrats, you are eligible!"
        return 0
- `return 0` = success

4. **Ask User for Input**

        echo "Please enter your age"
        read user_age
   
- Displays a message asking the user to type their age
- Stores their input into a variable `user_age`

5. **Call the Function**

        validate_age "$user_age"
        exit_code=$?

- Calls `validate_age` with the input value
- `$?` captures the function's exit code (from the `return` command and stores it in `exit_code`)

6. **Check Exit Code**

        if (( exit_code != 0 )); then
           echo "Input Validation failed."
        fi

- if exit code is not 0 --> It would print the error message
- If it's 0 then it does not run this `if` statement but we could add an `else` clause to `echo "Validation Passed"`

         
        
