#!/bin/bash
set -x
touch ~/.no_auto_tmux
bash install_rsync.sh
# Get the directory of the currently executing script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DIR
# Add the source line to .bashrc if it's not already present
if ! grep -q "source $DIR/shortcuts.sh" ~/.bashrc; then
    # echo "VASTID=" >> ~/.bashrc
    echo "source $DIR/shortcuts.sh" >> ~/.bashrc
    echo "source /root/instance_info.sh" >> ~/.bashrc
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
#bash setup_conda.sh
conda init
bash setup_profile.sh
chmod +x $DIR/vast
ln -s $DIR/vast /usr/bin/vast
echo "bash $DIR/setup_tmux.sh" >> /root/.bashrc
echo "conda activate gpnnenv" >> /root/.bashrc

set +x
