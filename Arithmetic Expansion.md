# ➕➖Arithmetic Expansion✖️➗  

This allows you to perform mathematical operations in Bash Scripts using a special syntax

## ♦️ Syntax
`$(( expression ))`

- `num1=5` `num2=10`
- `result=$((num1 + num 2))`
- `echo "The answer to adding $num1 and $num2 is $result`

## ⬛ Calculating area and perimeter:

`length=5` `width=8`

`area=$((length * width))`

`perimeter=$((2 * (length + width)))`

`echo "Area=$area`
`echo "Perimeter=$perimeter`

## 💲Arithmetic Expansions with Parameters

We can make the script more dynamic by allowing it accept input values via the command-line parameters

The only chance we make **in the script** is:

`length=$1`

`width=$2`

And we input the values in the terminal when running the script: `./myscript.sh 8 5`

