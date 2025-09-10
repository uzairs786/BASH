# ❓If Statements in Bash

`if` allows **decision-making** in scripts based on conditions.

## How it is done:

    if [ condition ]

    then

           echo "Hello" #Code to run if condition is met

    fi

## Examples

**🔢 Number Comparison**
   
    age=25
    if [ $age -gt 18 ]
    then
      echo "You are an adult"
    fi

**🔡 String Comparison**

    name="Uzair"
    if [ $name == "Uzair" ]
      echo "Hello Uzair"
    fi

**🧠 Logical Operators**

    grade=80
    if [ $grade ge 90 ] && [ $grade le 100 ]
    then
      echo "Excellent"
    fi 

Note: In this case, there will be nothing printed as `85` is not greater/equal to 90. It is **only** less than 100.

**🔎 Operators**

- `-eq` - equal to
- `-ne` - not equal to
- `-gt` - greater than
- `-lt` - less than
- `ge` - greater or equal
- `le` - less or equal
- `==` - **string** equals
- `!=` - **string** not equals
- `&&` = AND (for more than one condition)
- `||` = OR (for more than one condition)

## Key Notes
- `if` statements allow conditional logic
-  Use `[ ]` with proper spacing
-  Combine multiple conditions with `&&` and `||`
