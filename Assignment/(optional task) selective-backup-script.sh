#!/bin/bash


inputfile_type() {
    
    echo "What type of file would you like to backup?"
    read filetype
        if ls -R *."$filetype" 2>/dev/null; then
            mkdir -p Backup
            cp *."$filetype" Backup/
            echo "All .$filetype files have been backed up."
        else
            echo "No .$filetype does not exit."
        fi
}

inputfile_type 









