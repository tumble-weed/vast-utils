set -a
if [[ "$0" == "-bash" || "$0" == "-sh" || "$0" == "bash" ]]; then
  SCRIPT_DIR=$(dirname "${BASH_SOURCE}")
else
  SCRIPT_DIR=$(dirname "$0")
fi
GPNN=/root/evaluate-saliency-4/GPNN
BENCH=$GPNN/benchmark2
GROAD=/root/evaluate-saliency-4/GPNN_for_road
JIGSAW=/root/evaluate-saliency-4/jigsaw
BIGFILES=/root/bigfiles
LIBRERESULTS=$BIGFILES/other/results-librecam
LIBREMETRICS=$BIGFILES/other/metrics-librecam
export VOCdevkitDIR=/root/bigfiles/dataset/VOCdevkit/
CIFAR=/root/evaluate-saliency-4/GPNN_for_road/road_evaluation/experiments/cifar10
INVERT=/root/evaluate-saliency-4/fong-invert/
DI=$INVERT/DeepInversion
MULTI=$INVERT/../dummy-multithresh
#alias cdmulti="cd $MULTI"
alias cdmulti="set-title multi;cd /root/evaluate-saliency-4/multithresh-saliency/multithresh_saliency"
STABLE=/root/evaluate-saliency-4/stable_diffusion
function nsmi () {
nvidia-smi
}
#VASTID="vast-109"
#if ! [ -v pre_PS1 ]; then
#  pre_PS1=PS1
#  PS1="${PS1}(${VASTID})"
#fi

function set-title() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  title="$*"
  TITLE="\[\e]2;$title\a\]"
  PS1=${ORIG}${TITLE}
}
function get-title(){
#title=$(echo "$TITLE" | sed -n 's/\\[\e]2;\(.*\)\\a\\]/\1/p')
# \[\e]2;aniket\a\]
title=$(echo "$TITLE" | sed -n 's/\\\[\\e\]2;\(.*\)\\a\\\]/\1/p')
echo $title
    }

#set-title $VASTID
FREQCOM=/root/frequent_commands

function nsmi {
    watch -n 0.01 nvidia-smi
}
function tma {
    tmux a -t $1
}

function tml {
    tmux ls | tee /root/tmux-sessions

}
function pyl {
    ps aux  | grep python | tee /root/running-python

}
function tmn {
    tmux new -s $1
}
#export GH=
source $GPNN/frequent_commands.sh
git config --global user.email "aniketsinghresearch@gmail.com"
git config --global user.name "Aniket Singh"
PYPDB="python -m ipdb"
PYPDBC="${PYPDB} -c c"
function FINDCODE() { 
    echo $1
    find .  -type f -print0 | xargs -0 grep -n "$1"
}
function FINDF() { 
    echo $1
    find . -name "$1" -type f 
}
function FINDPY() { 
    echo $1
    find . -name "*.py" -type f -print0 | xargs -0 grep -n "$1"
}

function FINDTEX() { 
    echo $1
    find . -name "*.tex" -type f -print0 | xargs -0 grep -n "$1"
}

function tmc(){
tmux set -t $1 status-style bg=$2
}

function PSCODE() { 
    ps aux | grep $1
}
export PYTHONPATH="/root/aniket_common":$PYTHONPATH
function pybp () {
printf "\n" >> /root/.pybp
printf "$1" >> /root/.pybp
printf "\n" >> /root/.pybp
}

function gita () {
git add 
}
TRASHDIR="/root/.local/share/Trash/files"

#cd $GROAD
source activate gpnnenv
#cd $DIDIR
#source activate pytorch3d
function nonlygen () {
ls -lah /root/evaluate-saliency-4/GPNN/benchmark/results-librecam/imagenet-gpnn-onlygen-save | wc -l
}
RUNONLYGEN="python scripts/run_many_gpnn_may2.py"
function D () {
export $1="`pwd`"
}
function nleft () {
while true; do
echo "pascal" 
ls -1 /root/evaluate-saliency-4/GPNN/benchmark/results-librecam/pascal-gpnn-onlygen-save | wc -l; 
echo "imagenet"
ls -1 /root/evaluate-saliency-4/GPNN/benchmark/results-librecam/imagenet-gpnn-onlygen-save | wc -l; 
sleep 20; done
}
function nleft2 () {
while true; do
echo "pascal" 
ls -1 /root/evaluate-saliency-4/GPNN/benchmark/results-librecam/pascal-gpnn-gradcam-vgg16 | wc -l; 
echo "imagenet"
ls -1 /root/evaluate-saliency-4/GPNN/benchmark/results-librecam/imagenet-gpnn-gradcam-vgg16 | wc -l; 
sleep 20; done
}
function duh () {
du -h . --max-depth 1
}
function lsxz (){
  python /root/lsxz $1
}
function lsbl2 (){
  python /root/lsbl2 $1
}
function gits (){
git status > git_pending
}
function gita (){
git add "$@"
}
GDRIVE="aniketsinghresearch-gdrive"
SAMDIR="/root/evaluate-saliency-4/fong-invert/segment-anything"
function startmulti ()
{
   cd $MULTIDIR;source activate gpnnenv
}
function starttmulti ()
{
    tmux new -d -s t-multi "bash"
}
function starttpr ()
{
    tmux new -d -s t-pr "bash"
}
TRY_MODELNET="/root/evaluate-saliency-4/fong-invert/point-radiance/try_modelnet.ipy"
function act3d()
{
    source activate pytorch3d
}

function startbench () 
{
cd /root/evaluate-saliency-4/saliency_benchmarking
source activate gpnnenv
}

function startgpnn () 
{
cd /root/evaluate-saliency-4/GPNN
source activate gpnnenv
}

function startcsm () 
{
 tmux new -d -s t-cs1 code-server /root/evaluate-saliency-4/dummy-multithresh --bind-addr localhost:8000 &
}
function startjup () 
{
 cd /root
 tmux new -d -s t-jup jupyter notebook --port 8000 --allow-root --NotebookApp.password="$(echo password | python -c 'from jupyter_server.auth import passwd;print(passwd(input()))')"

}
function startjup_ () 
{
if ! tmux has-session -t t-jup > /dev/null 2>&1; then

 cd /
 tmux new -d -s t-jup jupyter notebook --port 8000 --allow-root --NotebookApp.password="$(echo password | python -c 'from notebook.auth import passwd;print(passwd(input()))')"
else
echo "jupyter session running"
fi
}

function starthttp () 
{
if ! tmux has-session -t t-http > /dev/null 2>&1; then

 cd /
 tmux new -d -s t-http "cd /root; python -m http.server 10000."
else
echo "http session running"
fi
}


GPNNBENCH=$GPNN/benchmark
 
eval "$(mcfly init bash)"
ONESTEP="/root/evaluate-saliency-4/dummy-multithresh/DeepInversion/one_step_evaluation.py"
function gits0 () {
git status | head -n 30
}
source /root/acml_shortcuts.sh
ACML="/root/acml-gpnn-paper"
WAV="/root/wav2lip-banana"
function startgpt ()
{
source GENV/bin/activate
}
DUTILS='/root/evaluate-saliency-4/dutils/'
function rsync_to_host() {
    # Check for at least 2 arguments: source folder and destination host
    # return 0
    if [ "$#" -lt 2 ]; then
        echo "Usage: rsync_to_host <source_folder> <destination_host> [--overwrite]"
        return 1
    fi

    # Extract the source folder and destination host from the arguments
    SOURCE_FOLDER="$1"
    DESTINATION_HOST="$2"
    # DESTINATION_HOST="vast-115"
    SSH_KEY="$HOME/.ssh/shared_with_shubham"

    # Check if the source folder exists
    if [ ! -d "$SOURCE_FOLDER" ]; then
        echo "Error: Source folder $SOURCE_FOLDER does not exist!"
        return 1
    fi
    
    # Build the rsync command
    # RSYNC_CMD="rsync -avz -e 'ssh -i $SSH_KEY'"
    #RSYNC_CMD="rsync -avz -e \"ssh -i $SSH_KEY\""
    RSYNC_CMD="rsync -avz" 


    # If the third argument is --overwrite, add the --delete option to the rsync command
    if [ "$3" == "--overwrite" ]; then
        RSYNC_CMD="$RSYNC_CMD --delete"
    fi

    # Append the source and destination to the rsync command and run it
    echo "${RSYNC_CMD}"
    fullcmd="${RSYNC_CMD} \"${SOURCE_FOLDER}\" \"${DESTINATION_HOST}:${SOURCE_FOLDER}\""
    echo $fullcmd
    #set -x
    #`$fullcmd`
    #set +x
}
ELP="/root/evaluate-saliency-4/elp_with_scales"
VUTILS="/root/vast-utils"
TORCHRAYRESULTS="/root/bigfiles/other/results-torchray"
VSHORT="/root/vast-utils/shortcuts.sh"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

echo "SCRIPT_DIR"
echo $SCRIPT_DIR
source $SCRIPT_DIR/tmp_alias.sh


#cd $ELP
#cd $GPNN
alias redobash="source /root/.bashrc"


alias tmk='kill_tmux_sessions'

kill_tmux_sessions() {
    for session_name in "$@"; do
        # Check if the session exists
        if tmux has-session -t "$session_name" 2>/dev/null; then
            read -p "Kill Tmux session '$session_name'? (y/n): " answer
            if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
                tmux kill-session -t "$session_name"
                echo "Tmux session '$session_name' killed."
            else
                echo "Tmux session '$session_name' not killed."
            fi
        else
            echo "Tmux session '$session_name' not found."
        fi
    done
}

source /root/instance_info.sh
alias pythond='python -m ipdb -c c'
alias pythond2='python -m ipdb'
bash $SCRIPT_DIR/start_services.sh
echo "shortcuts.sh done"
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"

function mycd()
{
  # https://github.com/aaronharnly/dotfiles-public/blob/84596ea720234aa5f15152310cc5a95955d6cd84/.bash-functions.sh#L268C1-L295C1
  history -w # write current history file
  builtin cd "$@"  # do actual cd
  local HISTDIR="$HOME/.bash_history.d$PWD" # use nested folders for history
  if [ ! -d "$HISTDIR" ]; then # create folder if needed
    mkdir -p "$HISTDIR"
  fi
  export HISTFILE="$HISTDIR/${USER}_bash_history.txt" # set new history file
  history -c  # clear memory
  history -r #read from current histfile

#  # if we're entering a project directory, check for a virtualenv
#  this_dir=$(basename "$PWD")
#  parent_dir=$(dirname "$PWD")
#  if [ ! -z "$PROJECT_HOME" -a "$parent_dir" == "$PROJECT_HOME" ]; then
#    if [ -z "$WORKINGON" ]; then
#      if [ -d "$WORKON_HOME/${this_dir}" ]; then
#          echo "Activating virtualenv $this_dir..."
#          export WORKINGON="$this_dir"
#          workon "${this_dir}"
#      fi
#    fi
#  else
#    unset WORKINGON
#  fi
}
alias cdgpnn="set-title gpnn;cd $GPNN"
alias cdelp="set-title elp;cd $ELP"
alias cdelp_utils="cd $ELP/torchray/attribution/elp_utils"
alias vimhelp="cd /root/myhelp;vim /root/myhelp/help.md;git a help.md;git cpp \"help\";cd -"
alias vimdutils="cd /root/evaluate-saliency-4/dutils/dutils/; vim /root/evaluate-saliency-4/dutils/dutils/dutils.py; git add .;git cpp 'updated';cd -"
alias vimdutilsr="vim /root/evaluate-saliency-4/dutils/requirements.txt"
alias cddutils="set-title dutils; cd /root/evaluate-saliency-4/dutils/dutils"
alias refreshshortcuts="source /root/vast-utils/shortcuts.sh;source /root/vast-utils/tmp_alias.sh"
alias vimshortcuts="vim /root/vast-utils/shortcuts.sh;source /root/vast-utils/shortcuts.sh"
alias vimtmpalias="vim /root/vast-utils/tmp_alias.sh;source /root/vast-utils/tmp_alias.sh"
alias cdvutils='cd /root/vast-utils'
#alias vimtodo="old_title=\"`get-title`\";set-title todo; cd /root/todo/ && vim /root/todo/todo && git a todo && git c 'todo' && git pu && cd -; set-title ${old_title}"
function vimtodo(){
    #set -e
    old_title=`get-title`
    #echo "printing old title"
    #get-title
    set-title todo; 
    cd /root/todo/
    fname="$1"
    echo $fname
    if [ -z "$fname" ];then
       vim /root/todo/todo
    else
       vim /root/todo/$fname
    fi
    git a . && git c 'todo' && git pu && cd -
    set-title $old_title
    #set +e
    }
alias vimtodomulti="vimtodo multi"
#alias vimtodo2="set-title todo2; cd /root/todo2/ && vim /root/todo2/todo2 && git a . && git c 'todo2' && git pu && cd -"
function vimtodo2(){
    #set -e
    old_title=`get-title`
    #echo "printing old title"
    #get-title
    set-title todo2; 
    cd /root/todo2/
    fname="$1"
    echo $fname
    if [ -z "$fname" ];then
       vim /root/todo2/todo2 
    else
       vim /root/todo2/$fname
    fi
    git a . && git c 'todo2' && git pu && cd -
    set-title $old_title
    #set +e
    }
#function addtodo2(){
#    msg="$*"
#    echo "$msg" >> /root/todo2/todo2
#    }
alias vimtodo2ps="vimtodo2 ps"
alias vimtodops="vimtodo2 ps"
alias vimtodo2psych="vimtodo2 ps"
alias vimtodopsych="vimtodo2 ps"
alias vimtodo2phys="vimtodo2 phys"
alias vimtodophys="vimtodo2 phys"
alias vimtodo2job="vimtodo2 job"
alias vimtodojob="vimtodo2 job"
alias vimtodo2hiring="vimtodo2 hiring"
alias vimtodohiring="vimtodo2 hiring"
alias vimtodovideo="vimtodo video"

alias vimssh="vim /root/.ssh/config"
source /root/vast-utils/tmp_alias.sh
function cdparent(){
    local fname="$1"
    fname=`realpath $fname`
    cd `dirname $fname`
}
alias killlast="kill %%"
alias f='realpath'

function upload_instance_to_gdrive_(){

    source /root/instance_info.sh
    echo $VASTID    
    while true;do
        rclone copy -P /root/instance_info.sh aniketsinghresearch-gdrive:$VASTID/
        rclone copy -P /root/todo2 aniketsinghresearch-gdrive:$VASTID/todo2
        rclone copy -P /root/evaluate-saliency-4 aniketsinghresearch-gdrive:$VASTID/evaluate-saliency-4
        rclone copy -P /root/myhelp aniketsinghresearch-gdrive:$VASTID/myhelp
        rclone copy -P /root/todo aniketsinghresearch-gdrive:$VASTID/todo
        rclone copy -P /root/vast-utils aniketsinghresearch-gdrive:$VASTID/vast-utils
        sleep 10
    done
    
    
}
upload_instance_to_gdrive()
{(
    # source /root/instance_info.sh
    # echo $VASTID
    tmux kill-session t-rclone-instance
    # tmux new-session -d -s t-rclone-instance 'watch  -n 10 "{
    # rclone copy -P /root/evaluate-saliency-4 aniketsinghresearch-gdrive:$VASTID/evaluate-saliency-4
    # rclone copy -P /root/vast-utils aniketsinghresearch-gdrive:$VASTID/vast-utils
    # }"'
    tmux new-session -d -s t-rclone-instance "bash -i -c \"upload_instance_to_gdrive_\""

    tmux a -t t-rclone-instance
    #rclone copy -P /root/bigfiles/other/metrics-torchray aniketsinghresearch-gdrive:metrics-torchray
    )
}
gitacpp ()
{ local mesg="$1"
shift
fnames=("$@")
#echo "mesg $mesg"
for fname in "${fnames[@]}";do
    #echo $fname
    #echo "----"
    git a $fname
    done
git cpp "$mesg"

    }

alias tmaviz="tma t-visualize"
alias tmaselect="tma t-select"
alias tmasummary="tma t-summary"
#function findbash(){
#    name="$1"
#    shopt -s extdebug; declare -Ff "$name"; shopt -u extdebug
#}
alias watchh="watch "
findbash(){
  # https://askubuntu.com/a/1146283
  target="$@"
  files=( ~/.bashrc ~/.profile ~/.bash_profile ~/.bash.login
         ~/.bash_aliases /etc/bash.bashrc /etc/profile
         /etc/profile.d/* /etc/environment)
    while IFS= read -r file; do
      files+=( "$file" )
    done < <(grep -hPo '(^|\s)(\.|source)\s+\K\S+'  "${files[@]}" 2>/dev/null)
    for file in "${files[@]}"; do
      ## The tilde of ~/ can break this
      file=$(sed 's|~/|'"$HOME"'/|g' <<<"$file")
      if [[ -e $file ]]; then
        grep -H "$target" -- "$file"
      fi
    done
}
alias rless="less -r"
alias gitaignore="git add .gitignore"
function editncommitgitignore(){
    local msg="$1"
    vim .gitignore && git add .gitignore && git cpp "$msg"
}
