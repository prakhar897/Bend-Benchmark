#!/bin/bash

# Define input and output files
input_file="commands.txt"
output_file="results.txt"

# Check if the input file exists
if [[ ! -f $input_file ]]; then
    echo "Input file '$input_file' not found!"
    exit 1
fi

# Empty the output file if it exists
> $output_file

# Loop through each line (command) in the input file
while IFS= read -r cmd; do
    # Print the command to the output file
    echo "Command: $cmd" >> $output_file
    echo "----------------------" >> $output_file
    
    # Execute the command and capture its output
    output=$(eval "$cmd" 2>&1)
    
    # Print the output of the command to the output file
    echo "$output" >> $output_file
    echo "" >> $output_file
done < "$input_file"

echo "All commands executed. Results are in '$output_file'."
