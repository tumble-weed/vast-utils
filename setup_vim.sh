#!/bin/bash
mypath=`realpath ${BASH_SOURCE[0]}`
mydir=`dirname $mypath`
apt update
apt install vim -y
cp $mydir/.vimrc /root/.vimrc
mkdir -p ~/.config/nvim
ln -s /root/.vimrc ~/.config/nvim/init.vim
#echo "set nu" >> /root/.vimrc
#echo "set tabstop=4" >> /root/.vimrc
#echo "set shiftwidth=4" >> /root/.vimrc
#echo "set expandtab" >> /root/.vimrc
#echo "set expandtab" >> /root/.vimrc

