#!/bin/bash

# Get the directory of the currently executing script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Add the source line to .bashrc if it's not already present
if ! grep -q "source $DIR/shortcuts.sh" ~/.bashrc; then
    echo "source $DIR/shortcuts.sh" >> ~/.bashrc
    echo "Added source line to ~/.bashrc"
else
    echo "Source line already present in ~/.bashrc"
fi
