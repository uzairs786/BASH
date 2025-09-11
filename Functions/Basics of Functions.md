#  🔀 Basics of Functions

## 💡 What is a Function? 

A function is a **reusable block of code** that performs a specific task 

- It is like a mini program inside your script
- Makes your code cleaner, more modular and easier to reuse

## 🛠️ Basic Syntax 

    function name() {
      # code
    }

## 🧩 Functions with Parameters 

    greet_person() {
    name=$1                              # $1 refers to the first argument passed when Calling the function
    echo "Hello $name"
    }

    # Call the function
    greet_person Uzair

Output:

    Hello Uzair

## Summary

`function_name()` - Define the Function

`{ code }` - Code block to execute the function when it is called

`$1`, `$2` - The Parameters passed into the function referring to the arguments that are passed when calling the fucntion

`function_name` - Call/invoke the function

