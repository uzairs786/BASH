#!/bin/bash


inputfile_type() {
    
    echo "What type of file would you like to backup?"
    read filetype
    
        if ls -R *."$filetype" 2>/dev/null; then
            mkdir -p Backup
            cp *."$filetype" Backup/ || exit 1
            echo "All .$filetype files have been backed up."
            exit 0
        else
            echo "No .$filetype does not exit."
            exit 1
        fi
}

inputfile_type 









