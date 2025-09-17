#!/bin/bash

BACKUP="Backup"

if [ ! -d "$BACKUP" ]; then
    mkdir -p Backup
    cp *.txt Backup/
    echo "Backup Directory created and files copied."
else
    cp *.txt Backup/
    echo "Files copied to Backup Directory."
fi