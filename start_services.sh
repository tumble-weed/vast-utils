#!/bin/bash


#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
cd /root
# Check if a tmux session named "t-jup" exists
tmux has-session -t t-jup 2>/dev/null
if [ $? != 0 ]; then
    tmux new-session -d -s t-jup "jupyter notebook --allow-root --port 8000"
else
    echo "tmux session named t-jup is already running."
fi
#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
cd /root
# Check if a tmux session named "t-code" exists
tmux has-session -t t-code 2>/dev/null
if [ $? != 0 ]; then
    tmux new-session -d -s t-code "code-server . --port 11000"
else
    echo "tmux session named t-code is already running."
fi
#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
cd /root
# Check if a tmux session named "t-code" exists
tmux has-session -t t-http 2>/dev/null
if [ $? != 0 ]; then
    tmux new-session -d -s t-http "python -m http.server 10000"
else
    echo "tmux session named t-http is already running."
fi
#xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
cd /root
# Check if a tmux session named "t-code" exists
tmux has-session -t t-http 2>/dev/null
if [ $? != 0 ]; then
    tmux new-session -d -s t-fb "filebrowser -r /root -p 9999"
else
    echo "tmux session named t-fb is already running."
fi

