# 🌐 Running the Script from Anywhere

`./greet.sh` - This runs the `greet.sh` from the current working directory due to the use of `.`

To run it globally we can move the script to a directory that is in the `PATH` like `usr/local/bin` - a common directory to have user scripts.

`sudo mv greet.sh /usr/local/bin/greet` - It requires `sudo` permissions to move the script into the bin directory

We also change the name from `greet.sh` to `greet` so that it becomes easier to run

We also need to make it executable: `sudo chmod +x /usr/local/bin/greet`

**Now you can run `greet` from anywhere in the terminal without `./` or specificying the path**

