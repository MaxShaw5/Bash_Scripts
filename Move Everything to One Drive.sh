#!/bin/bash
user=$(logname)
directory1="/c/Users/$user/Desktop"
directory2="/c/Users/$user/Documents"
destination1="/c/Users/$user/OneDrive-Name/Desktop"
destination2="/c/Users/$user/OneDrive-Name/Documents"
 
find "$directory1" | while read -r file
do
    filename=$(basename "$file")
    echo "Moving $filename to $destination1..."
    cp "$file" -r "$destination1/$filename"
done

 
find "$directory2" | while read -r file
do
    filename=$(basename "$file")
    echo "Moving $filename to $destination2..."
    cp "$file" -r "$destination2/$filename"
done