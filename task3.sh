#!/bin/bash
# Interactive Bash Script to create a file with summary

echo "👋 Welcome to the File Creator!"

# Ask user for filename
read -p "Enter the filename you want to create: " filename

summary=""

# Check if file already exists
if [ -f "$filename" ]; then
    echo "⚠️ File '$filename' already exists!"
    summary="No file created — '$filename' already exists."
else
    touch "$filename"
    echo "✅ File '$filename' created successfully!"
    summary="File '$filename' was created successfully."
fi

# Show current directory contents
echo
echo "📂 Current directory: $(pwd)"
echo "Files here:"
ls

# Display summary
echo
echo "-----------------------------"
echo "📋 Summary:"
echo "$summary"
echo "-----------------------------"
echo "🎉 Task completed!"
