#!/bin/bash
curl -fsSL https://code-server.dev/install.sh | sh
mkdir -p /root/.config/code-server/
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DIR
cp $DIR/code_server_config.yaml /root/.config/code-server/config.yaml 
