# 🖨 Function Parameters

- They let you pass data into a function, allowing it to behave differently based on the inputs/arguments


## 📍 Positional Parameters

These are the numbered arguments you pass into a function or a script:

- `$1` - First Argument
- `$2` - Second Argument

## 🔃 Special Parameters

They provide metadata about the function call or script execution

      print_args() {
        echo "Number of Arguments: $#"
        echo "Script Name: $0"
        echo "First Argument: $1"
        echo "Second Argument: $2"
        echo "All Arguments: $@"
      }

      print_args "Uzair" "Ahmed" "Mohamed" 

Output:

      Number of arguments: 3
      Script Name: /Users/uzairabdsamad/bash-scripting.sh
      First argument: Uzair
      Second argument: Ahmed
      All arguments: Uzair Ahmed Mohamed
      

