#mypath=`realpath ${BASH_SOURCE[0]}`
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cp "$DIR/.gitconfig" ~/.gitconfig
