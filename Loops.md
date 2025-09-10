# ➰ Loops

## While Loops

- A `while` loop repeats a block of code **as long as a condition is true.**
- The condition is checked before each iteration.

      count=1

      while [ $count -le 5 ]
      do
        echo "Count: $count"
        ((count++))
      done

Output:

      Count: 1
      Count: 2
      Count: 3
      Count: 4
      Count: 5

  ## Looping through an Array

      fruits=("apple" "banana" "orange")     # Create an Array with 3 items
      index=0                                # Start with index 0

      while [ $index -lt ${fruits[@]} ]      # Loop while index < length of array
      do
        echo "Fruits: ${fruits[$index]}"     # Print the fruit at the current index  
        ((index++))                          # Increase index by 1
      done

Output:

      Fruit: apple
      Fruit: banana
      Fruit: orange

## For Loops

`for` loops let you repeat a block of code **for each item in a sequence** (like numbers of array values)

This is useful when you want to automate repetitive tasks

**➿ Basic Structure of a Loop: Examples**

      for ((i=1; i<=5; i++))
      do
        echo "Number: $i"
      done
      
Output:

      Number: 1
      Number: 2
      Number: 3
      Number: 4
      Number: 5

Each time the loop runs:
- `i` takes its first value and adds 1 until it reaches 5
-  The code inside `do` and `done` is executed

**▶️ Loop over an Array**

      fruits=("apple" "banana" "orange")

      for fruit in ${fruits[@]} 
      do
        echo "Fruit: $fruits"
      done

Output:

      Fruit: apple
      Fruit: banana
      Fruit: orange

Note:

- `@` is used for indexing when you want to loop through all elements in an array

**🔶 Loop using `seq` command**

      for number in $(seq 1 5)
      do 
        echo "Number: $number"
      done

Output:

      Number: 1
      Number: 2
      Number: 3
      Number: 4
      Number: 5

Note:

- Use `$(seq start end)` to loop over a range of numbers

# 🔴 Break & Continue

## ⛔ Break

- This exits the loop completely
- Useful for **stopping a loop early**

      for ((i=1; i<=5; i++))
      do
        if [ $i -eq 3 ]; then
            break
        fi
        echo "Number: $i"
      done

  Output:

        Number: 1
        Number: 2

  Loop stops completely when `i == 3`

  ## ♻️ Continue

  - **Skips** the current iteration and moves to the next one
  - Useful for skipping a value whilst continuing the loop
 
      for ((i=1; i<=5; i++))
      do
        if [ $i -eq 3 ]; then
          continue
        fi
        echo "Number: $i"
      done

Output:

       Number: 1
       Number: 2
       Number: 4
       Number: 5







