#!/bin/bash

# Define the log command
log_command="
# Log all commands to ~/command_log.txt
log_command() {
    echo \"\$(date +'%Y-%m-%d %H:%M:%S') | \$HISTCMD\" >> ~/command_log.txt
}

precmd_functions+=log_command
"

# Append the log command to ~/.zshrc if it's not already present
if ! grep -q "log_command()" ~/.zshrc; then
    echo "$log_command" >> ~/.zshrc
    echo "Log command successfully appended to ~/.zshrc"
else
    echo "Log command already exists in ~/.zshrc"
fi

# Source the updated ~/.zshrc
source ~/.zshrc

echo "Changes applied. Your terminal commands will now be logged."

