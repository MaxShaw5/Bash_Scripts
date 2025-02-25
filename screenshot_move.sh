#!/bin/bash
 
directory="/c/Users/M9266100/Downloads"
destination="/c/Users/M9266100/Pictures/Screencaps"
 
find "$directory" -type f -name "Screenshot*" | while read -r file
do
    filename=$(basename "$file")
    echo "Moving $filename to $destination..."
    mv "$file" "$destination/$filename"
done
