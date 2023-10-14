#!/bin/bash
bash install_rsync.sh
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
bash install_gh.sh
bash install_kitty.sh
bash setup_vim.sh
echo """
# ~/.profile: executed by Bourne-compatible login shells.

if [ /bin/bash ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi  
fi

mesg n 2> /dev/null || true
""" >> ~/.profile
echo """
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup=\"$('/opt/conda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)\"
if [ $? -eq 0 ]; then
    eval \"$__conda_setup\"
else
    if [ -f \"/opt/conda/etc/profile.d/conda.sh\" ]; then
        . \"/opt/conda/etc/profile.d/conda.sh\"
    else
        export PATH=\"/opt/conda/bin:$PATH\"
    fi  
fi
unset __conda_setup
# <<< conda initialize <<<
""" >> ~/.bashrc
chmod +x $DIR/vast
ln -s $DIR/vast /usr/bin/vast
