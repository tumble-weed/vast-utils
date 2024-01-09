alias runsess="cd $ELP; CUDA_VISIBLE_DEVICES=, python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation_with_sess_scale_and_crop --start 0 --end 5000 --continue_ --arch vgg16 --dataset voc_2007"
alias s115="ssh vast-115"
alias s117="ssh vast-117"
alias s119="ssh vast-119"

#function cdresults (){
#    set-title results
#    cd /root/bigfiles/other/results-torchray
#}

alias designkata="vim /root/mykata/design"
# alias cdkata="cd /root/mykata"

function cdkata (){
    set-title mykata
    cd /root/mykata
}
alias trymulti="cd /root/evaluate-saliency-4/multithresh-saliency/multithresh_saliency/;python run_multithresh_saliency.py"
#alias cdelp="cd /root/evaluate-saliency-4/elp_with_scales"
#alias cdmulti="cd /root/evaluate-saliency-4/multithresh-saliency"
#alias trydutils='python -c "import dutils"'
alias cdcam="cd /root/evaluate-saliency-4/cam-benchmark/cam_benchmark"
alias tryelp="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
#alias tryelprng="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true --rng 1234"
alias vimattribution="vim /root/evaluate-saliency-4/elp_with_scales/examples/attribution_benchmark.py"
alias vimrhandler="vim /root/evaluate-saliency-4/elp_with_scales/torchray/results_data_handler.py"
#alias trysaver="python -m ipdb -c c examples/attribution_benchmark.py --method dummy --continue_  --arch resnet50 --dataset voc_2007 --save_detailed_results true --start 1000 --end 2000"
alias trysaver0="python -m ipdb -c c examples/attribution_benchmark.py --method dummy   --arch resnet50 --dataset voc_2007 --save_detailed_results true "
#alias trywrong="python -m ipdb -c c examples/attribution_benchmark.py --method dummy1 --continue_  --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias tryimagenet="python -m ipdb -c c examples/attribution_benchmark.py --method center --start 2000 --end 3000 --continue_ --arch resnet50 --dataset imagenet-5000 --save_detailed_results true"
alias tryunw="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation_with_unweighted_scale_and_crop --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias tryunwrng="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation_with_unweighted_scale_and_crop --start 2000 --end 3000 --continue_ --rng 123 --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias trynormalized="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation_with_simple_scale_and_crop_normalized --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias cdvastscripts="cd /root/evaluate-saliency-4/elp_with_scales/vast-scripts"
alias cdrunscripts="cd /root/evaluate-saliency-4/elp_with_scales/run-scripts"
alias cdattribution="cd /root/evaluate-saliency-4/elp_with_scales/torchray/attribution"
alias cdnotebooks="cd /root/evaluate-saliency-4/elp_with_scales/notebooks"

alias trydone="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation --use_donefilelist true --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
#alias trymulti1="python -m ipdb -c c examples/attribution_benchmark.py --method multithresh_saliency  --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias trygp="python -m ipdb -c c examples/attribution_benchmark.py --method gp_saliency --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias trysanityelpgp="python -m ipdb -c c /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/sanity_check.py --method extremal_perturbation_with_simple_scale_and_crop_with_gp"
alias cdexamples="cd /root/evaluate-saliency-4/elp_with_scales/examples"
alias cdrunscripts="cd /root/evaluate-saliency-4/elp_with_scales/run-scripts"
alias makedummycorr="python -m ipdb -c c examples/attribution_benchmark.py --method grad_cam --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true;python -m ipdb -c c examples/attribution_benchmark.py --method dummy --start 2000 --end 3000  --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias vimsanity="vim /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/sanity_check.py"
alias vimrank="vim /root/evaluate-saliency-4/elp_with_scales/examples/rank_correlation.py"
alias vimpsampling="vim /root/evaluate-saliency-4/elp_with_scales/torchray/attribution/elp_utils/patch_sampling.py"
alias vimcsampling="vim /root/evaluate-saliency-4/elp_with_scales/torchray/attribution/elp_utils/crop_sampling.py"
alias vimoct17="vim /root/evaluate-saliency-4/elp_with_scales/torchray/attribution/extremal_perturbation_with_scale_and_crop_oct17.py"
alias vimvariants="vim /root/evaluate-saliency-4/elp_with_scales/torchray/attribution/extremal_perturbation_variants.py"

alias tryelpgp="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation_with_simple_scale_and_crop_with_gp  --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true --gp_y_mode log_prob --gp_ncrops1 100 --gp_sample1_freq 1"
alias tryelpgp0="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation_with_simple_scale_and_crop_with_gp  --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias vimmisc="vim /root/evaluate-saliency-4/elp_with_scales/torchray/misc.py"
alias vimgp="vim /root/evaluate-saliency-4/elp_with_scales/torchray/attribution/gp_saliency.py"
alias vimdeletion="vim /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/deletion.py" 
alias vimvisualization="vim /root/evaluate-saliency-4/elp_with_scales/torchray/helpers/visualization.py"
alias vimdownloadvast="vim /root/evaluate-saliency-4/elp_with_scales/scripts/download_results.sh "
alias lsdownloadvast="echo /root/evaluate-saliency-4/elp_with_scales/scripts/download_results.sh"
alias vimsetupvast="vim /root/evaluate-saliency-4/elp_with_scales/vast-scripts/setup_vast_instance.py"
alias vimuploadvast="vim /root/evaluate-saliency-4/elp_with_scales/scripts/upload.py"
alias vimsshauthorized="vim /root/.ssh/authorized_keys"
alias vimssh="vim /root/.ssh/config"
alias vimvastcopy="vim /root/vast-utils/vast_copy.sh"
alias finddonefilelist="echo /root/evaluate-saliency-4/elp_with_scales/scripts/create_donefilelist.py"
alias findgenrunscripts="echo /root/evaluate-saliency-4/elp_with_scales/scripts/generate_run_scripts.py"
#alias examplegenrunscripts="echo \"cdelp;python scripts/generate_run_scripts.py --start 0 --end 5000 --n_parts 4 --arch vgg16 --method extremal_perturbation_with_composition --dataset voc_2007 --continue\""
alias findsetupvast="echo /root/evaluate-saliency-4/elp_with_scales/vast-scripts/setup_vast_instance.py"
alias examplesetupvastinstance="echo \"python vast-scripts/setup_vast_113.py\""

#function check_upload() {
#    local instance_name="$1"
#    #echo "Instance Name: $instance_name"
#    tma t-upload-benchmark-$instance_name
#    tma t-upload-dutils-$instance_name
#    tma t-upload-elp-$instance_name
#    tma t-upload-gpnnenv-$instance_name
#    #tma t-upload-sess-$instance_name
#    #tma t-vast-$instance_name
#}
#function check_running() {
#    local instance_name="$1"
#    #echo "Instance Name: $instance_name"
#    code=`python -c "s=\"$instance_name\";print(s[len('vast-'):])"`
#    #echo $code
#    ssh -t "$instance_name" "tmux attach-session -t t-$code"
#    }
#function download_from_instance() {
#    local instance_name="$1"
#    bash /root/evaluate-saliency-4/elp_with_scales/scripts/download_results.sh $instance_name
#}
#function check_download() {
#    local instance_name="$1"
#    tma t-download-$instance_name
#    }
#function setup_instance(){
#    local instance_name="$1"
#    python /root/evaluate-saliency-4/elp_with_scales/vast-scripts/setup_vast_instance.py $instance_name
#}
#function check_ndone(){
#    local method="$1"
#    local arch="$2"
#    #python /root/evaluate-saliency-4/elp_with_scales/vast-scripts/setup_vast_instance.py $instance_name
#    ls -d /root/bigfiles/other/results-torchray/*$method*$arch/*/ | wc -l
#    ls /root/bigfiles/other/results-torchray/*$method*$arch/*/*.xz | wc -l
#}
alias vimselect="vim /root/evaluate-saliency-4/elp_with_scales/examples/select_results.py"
alias tryselect="cdelp;python examples/select_results.py"
alias trydofilelist="python -m ipdb -c c examples/attribution_benchmark.py --method rise --arch resnet50 --dataset voc_2007 --save_detailed_results true --use_dofilelist /tmp/dummy_dolist.txt"

alias vimtmprun="vim /tmp/run_on_single_image_a.py"
alias vimbackend="vim /root/evaluate-saliency-4/elp_with_scales/torchray/benchmark/backend_for_run_on_image.py"
alias vimvastshortcuts="vim /root/evaluate-saliency-4/elp_with_scales/scripts/vast_shortcuts.sh;source /root/evaluate-saliency-4/elp_with_scales/scripts/vast_shortcuts.sh"
source /root/evaluate-saliency-4/elp_with_scales/scripts/vast_shortcuts.sh
function ssh2(){

    ssh -i /root/.ssh/shared_with_shubham $@
}
alias trysess="python examples/attribution_benchmark.py --method SESS --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias trycompile="TORCHDYNAMO_REPRO_AFTER=dynamo TORCHDYNAMO_REPRO_LEVEL=4 python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation   --end 100 --arch resnet50 --dataset voc_2007  --use_compiled_model true"
alias trybackend="DBG_VISUALIZATION=1 python -m torchray.benchmark.backend_for_run_on_image"
alias cdbenchmark="cd /root/evaluate-saliency-4/elp_with_scales/torchray/benchmark"
alias cdhelpers="cd /root/evaluate-saliency-4/elp_with_scales/torchray/helpers"
alias vimresultshandler="vim /root/evaluate-saliency-4/elp_with_scales/torchray/results_data_handler.py"
alias lsresults="ls /root/bigfiles/other/results-torchray/"

function createdonefilelist(){
    local methodname_for_save="$1"
    local arch="$2"
    echo $methodname_for_save
    python /root/evaluate-saliency-4/elp_with_scales/scripts/create_donefilelist.py --methodname_for_save "$methodname_for_save" --arch "$arch"
}
function createalldonefilelist(){
 createdonefilelist extremal_perturbation vgg16
 createdonefilelist extremal_perturbation resnet50
 createdonefilelist extremal_perturbation_with_simple_scale_and_crop_normalized vgg16
 createdonefilelist extremal_perturbation_with_simple_scale_and_crop_normalized resnet50
 #createdonefilelist extremal_perturbation_with_unweighted_scale_and_crop vgg16
 #createdonefilelist extremal_perturbation_with_unweighted_scale_and_crop resnet50
}
function vimrun(){
    local instance_name="$1"
    local suffix=`python -c "instance_name=\"$instance_name\"; print(instance_name[len('vast-'):]);"`
    vim  /root/evaluate-saliency-4/elp_with_scales/run-scripts/run_vast_$suffix.sh 
}
function correctpointing(){
local method=$1
local arch=$2
cdelp
python /root/evaluate-saliency-4/elp_with_scales/scripts/correct_pointing.py --method $method --dataset voc_2007 --arch $arch
    }
function correctallpointing(){
    correctpointing grad_cam resnet50
    correctpointing grad_cam vgg16


    correctpointing rise resnet50
    correctpointing rise vgg16

    correctpointing gradient resnet50
    correctpointing gradient vgg16

    correctpointing guided_backprop resnet50
    correctpointing guided_backprop vgg16

    correctpointing grad_cam resnet50
    correctpointing grad_cam vgg16
}

function genrunscript(){
    local start_dir="`pwd`"
    local json_filename="$1"
    cdelp
    cd run-scripts
    python generate_run_script.py --json_filename run-jsons/$json_filename
    cd $start_dir
}

function upload_torchray(){
rclone copy -P  /root/bigfiles/other/results-torchray aniketsinghresearch-gdrive:results-torchray
rclone copy -P  /root/bigfiles/other/metrics-torchray aniketsinghresearch-gdrive:metrics-torchray
    }
alias vimworkflow="vim /root/evaluate-saliency-4/elp_with_scales/scripts/workflow.py"
alias vim112="vim /root/evaluate-saliency-4/elp_with_scales/run-scripts/run_vast_112.sh"
alias run112="cdelp;bash run-scripts/run_vast_112.sh"
alias cdtorchray0="cd /root/evaluate-saliency-4/TorchRay"
alias trygradcam0="cdtorchray0;python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation --arch resnet50 --dataset voc_2007"
alias cdsess="cd /root/evaluate-saliency-4/sess"
alias cdcameras="cd /root/evaluate-saliency-4/CAMERAS"
#alias trysanity="DBG_SANITY=1 pythond /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/sanity_check.py"
alias trysanity="DBG_SANITY=1 pythond /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/sanity_check.py --imroot /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/ILSVRC2012_val_00015410.JPEG --dataset imagenet --target 13"
alias vimimagenetsynsets="vim /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/imagenet_synsets.py"
function checkallresultstorchray(){
    fname="/tmp/doneresults.txt"
    echo "" > $fname
    dataset=${1:-""}
    method=${2:-""}
    arch=${3:-""}
    for d in `ls -d /root/bigfiles/other/results-torchray/$dataset*$method*$arch/`; do
        echo $d >> $fname
        echo "`ls -d $d/*/ | wc -l`" >> $fname
        echo "`ls $d/*/*.xz | wc -l`" >> $fname
        echo '-----------------------------------------------------' >> $fname
    done

    less $fname
}
alias trycameras="python examples/attribution_benchmark.py --method CAMERAS --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
function checkgit(){
    dirs=(/root/evaluate-saliency-4/elp_with_scales /root/evaluate-saliency-4/cam_benchmark /root/vast-utils/ /root/dutils /root/evaluate-saliency-4/CAMERAS /root/evaluate-saliency-4/sess)
    for d in ${dirs[@]}; do
        tmux new-session -d -s t-git "cd $d; git s;bash"
        tma t-git
    done
}
