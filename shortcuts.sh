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
STABLE=/root/evaluate-saliency-4/stable_diffusion
function nsmi () {
nvidia-smi
}

#if ! [ -v pre_PS1 ]; then
  pre_PS1=PS1
  PS1="${PS1}(vast-109)"
#fi

function set-title() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
}

set-title vast-109
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
export GH=
source $GPNN/frequent_commands.sh
git config --global user.email "aniketsinghresearch@gmail.com"
git config --global user.name "Aniket Singh"
PYPDB="python -m ipdb"
PYPDBC="${PYPDB} -c c"
function FINDCODE() { 
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
cd $GPNN
#cd $GROAD
conda activate gpnnenv
#cd $DIDIR
#conda activate pytorch3d
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
   cd $MULTIDIR;conda activate gpnnenv
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
    conda activate pytorch3d
}

function startbench () 
{
cd /root/evaluate-saliency-4/saliency_benchmarking
conda activate gpnnenv
}

function startgpnn () 
{
cd /root/evaluate-saliency-4/GPNN
conda activate gpnnenv
}

function startcsm () 
{
 tmux new -d -s t-cs1 code-server /root/evaluate-saliency-4/dummy-multithresh --bind-addr localhost:8000 &
}
function startjup () 
{
 cd /
 tmux new -d -s t-jup jupyter notebook --port 9000 --allow-root --NotebookApp.password="$(echo password | python -c 'from notebook.auth import passwd;print(passwd(input()))')"

}
function startjup_ () 
{
if ! tmux has-session -t t-jup > /dev/null 2>&1; then

 cd /
 tmux new -d -s t-jup jupyter notebook --port 9000 --allow-root --NotebookApp.password="$(echo password | python -c 'from notebook.auth import passwd;print(passwd(input()))')"
else
echo "jupyter session running"
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
source GENV/bin/activate                                                           │········
}
DUTILS='/root/evaluate-saliency-4/dutils/'
