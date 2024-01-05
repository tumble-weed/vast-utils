#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DIR
cp $DIR/code_server_config.yaml /root/.config/code-server/config.yaml 
