# Writing your First Script ✍️

1. Create the file/script:
`touch myscript.sh`
2. Open and edit it:
`vim myscript.sh`
3. Add the *shebang* to the top
`#!/bin/bash
4. Add a command - like printing 'Hello World'
`echo "Hello World"`
5. Save & exit
`:wq!`
6. Make it executable:
`chmod +x myscript.sh`
7. Run the script:
`./myscript.sh`

## What is *shebang*?

`#!/bin/bash` - Tells the system which interpreter to use. In this case: Bash

Regardless of what shell you are using (`zsh`) it will interpret it as a bash script

**Other ways to run scripts**

- You can use the `bash` command or `sh` command instead of `./`

## Comments in Bash Scripting

- Comments are useful for explaining what the commands/code is doing
- This will help when collaborating with others
- Comments are 'ignored' when running the script

**Single-Line Comments**: Start the line with #

`# This prints a greeting`

`echo "Hello World"`

**Multi-Line Comments**: Use `:` with single quotes

`: 'This script renames .txt files to .bak`

`It loops through files in the current directory`

`'`

