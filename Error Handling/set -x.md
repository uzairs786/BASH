# 🐞 Debugging Bash Scripts with `set -x`

When a script isn’t behaving as expected, **debugging** helps you trace what’s happening.
The `set -x` option is one of the most useful tools for this purpose.

---

## 🧠 Key Concept

* **`set -x`** → prints each command **before it runs**, showing how the script is being executed step by step.
* Useful for **troubleshooting**, understanding variable values, and verifying script flow.

---

## 📝 Example 1: Simple Script Debugging

```bash
#!/usr/bin/env bash
set -x  # Enable debugging

echo "This is a test"

x=10
echo "The value of x is $x"
```

### Sample Output:

```
+ echo 'This is a test'
This is a test
+ x=10
+ echo 'The value of x is 10'
The value of x is 10
```

* Each command is printed **prefixed with `+`** before being executed.

---

## 📝 Example 2: Arithmetic Debugging

```bash
#!/usr/bin/env bash
set -x

echo "Starting the script"

x=10
y=20
z=$(( x + y ))

echo "The value of z is $z"
```

### Sample Output:

```
+ echo 'Starting the script'
Starting the script
+ x=10
+ y=20
+ z=30
+ echo 'The value of z is 30'
The value of z is 30
```

You can see **exactly** when variables are assigned and what value they hold.

---

## 🔧 Turning Debugging Off

You don’t have to debug the whole script — you can disable it partway through:

```bash
#!/usr/bin/env bash
set -x  # Enable debugging

x=10
y=20
z=$(( x + y ))

set +x  # Disable debugging

echo "This line will NOT be debugged"
```

---

## 💡 Key Takeaways

* ✅ **Enable with `set -x`** to trace command execution.
* ✅ **Disable with `set +x`** when you only want to debug a specific section.
* 🔍 Excellent for:

  * Understanding the script’s flow
  * Checking variable values
  * Finding where errors occur
