#!/bin/bash

# Get the directory of the currently executing script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Add the source line to .bashrc if it's not already present
if ! grep -q "source $DIR/shortcuts.sh" ~/.bashrc; then
    echo "VASTID=" >> ~/.bashrc
    echo "source $DIR/shortcuts.sh" >> ~/.bashrc
    cp "$DIR/.gitconfig" ~/.gitconfig
    echo "Added source line to ~/.bashrc"
else
    echo "Source line already present in ~/.bashrc"
fi
touch /root/.no_auto_tmux
bash install.sh
