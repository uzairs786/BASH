#!/bash/bin

if [ ! -f "$FILE" ]; then
    echo "This file does not exist."
else
    echo "This file exists."
    
    if [ -r "$FILE" ]; then
        echo "This file exists and is readable"
    fi 
    
    if [ -w "$FILE" ]; then
        echo "This file exists and is writeable"
    fi 
    
    if [ -x "$FILE" ]; then 
        echo "This file exists and is executable"
    fi  
fi