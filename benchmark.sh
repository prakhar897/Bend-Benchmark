#!/bin/bash

# Function to print usage
usage() {
    echo "Usage: $0 <command_to_run>"
    echo "Example: $0 '/path/to/your/command arg1 arg2'"
    exit 1
}

# Check if a command is provided
if [ -z "$1" ]; then
    usage
fi

# Command to run
command="$*"

echo "Command: $command"

# Run the command and measure execution time
time_output=$(time (bash -c "$command" &>/dev/null))

# Extract the real time (execution time) from the time output
real_time=$(echo "$time_output" | grep 'real' | awk '{print $2}')


# Real Time is the total elapsed time from the start to the end of the command, including any time spent waiting for system resources.
# User Time is the time spent executing the command's instructions in user mode on the CPU.
# System Time is the time spent executing system calls on behalf of the command in kernel mode on the CPU.