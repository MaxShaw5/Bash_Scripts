directory="/path/to/downloads"

find "$directory" -maxdepth 1 -mtime +14 | while read -r file
do
    filename=$(basename "$file")
    echo "Deleting $filename..."
    rm -r "$file"
done