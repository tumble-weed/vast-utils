echo """
# ~/.profile: executed by Bourne-compatible login shells.

if [ /bin/bash ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi  
fi

mesg n 2> /dev/null || true
""" >> ~/.profile

