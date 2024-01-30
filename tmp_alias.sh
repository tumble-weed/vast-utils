set -a
#alias runsess="cd $ELP; DBG_SESS=1 CUDA_VISIBLE_DEVICES=, python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation_with_sess_scale_and_crop --start 0 --end 5000 --continue_ --arch vgg16 --dataset voc_2007"
alias dbgsess="cd $ELP; DBG_SESS=1 CUDA_VISIBLE_DEVICES=, python -m ipdb -c c examples/attribution_benchmark.py --method SESS --start 0 --end 5000  --arch vgg16 --dataset voc_2007"
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
alias tryelp="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation --start 2000 --end 3000 --arch resnet50 --dataset voc_2007 --save_detailed_results true"
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
alias cdrunjson="cd /root/evaluate-saliency-4/elp_with_scales/run-scripts/run-jsons"
alias cdattribution="cd /root/evaluate-saliency-4/elp_with_scales/torchray/attribution"
alias cdnotebooks="cd /root/evaluate-saliency-4/elp_with_scales/notebooks"

alias trydone="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation --use_donefilelist true --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
#alias trymulti1="python -m ipdb -c c examples/attribution_benchmark.py --method multithresh_saliency  --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias trygp="python -m ipdb -c c examples/attribution_benchmark.py --method gp_saliency --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias trysanityelpgp="cdcam;python -m ipdb -c c /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/sanity_check.py --method extremal_perturbation_with_simple_scale_and_crop_with_gp  --imroot /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/ILSVRC2012_val_00015410.JPEG --dataset imagenet --target 13"
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
alias tryselect="cdelp;pythond examples/select_results.py"
alias trydofilelist="python -m ipdb -c c examples/attribution_benchmark.py --method rise --arch resnet50 --dataset voc_2007 --save_detailed_results true --use_dofilelist /tmp/dummy_dolist.txt"
function runonimroot(){

    "runonimroot rise resnet50  /tmp/dummy_dolist.txt"
    local method="$1"
    local arch="$2"
    local dofilelist="$3"
    local dataset="${4:-voc_2007}"
    python -m ipdb -c c examples/attribution_benchmark.py --method $method --arch $arch --dataset $dataset --save_detailed_results true --use_dofilelist $dofilelist

}
function dummyfunction(){
    local arg1="$1"
    local arg2="$2"
    echo "$arg1"
    echo "$arg2"
    }
alias vimtmprun="vim /tmp/run_on_single_image_a.py"
alias vimbackend="vim /root/evaluate-saliency-4/elp_with_scales/torchray/benchmark/backend_for_run_on_image.py"
alias vimvastshortcuts="vim /root/evaluate-saliency-4/elp_with_scales/scripts/vast_shortcuts.sh;source /root/evaluate-saliency-4/elp_with_scales/scripts/vast_shortcuts.sh"
source /root/evaluate-saliency-4/elp_with_scales/scripts/vast_shortcuts.sh
function ssh2(){

    ssh -i /root/.ssh/shared_with_shubham $@
}
alias trysess="python examples/attribution_benchmark.py --method SESS --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias trycompile="TORCHDYNAMO_REPRO_AFTER=dynamo TORCHDYNAMO_REPRO_LEVEL=4 python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation   --end 100 --arch resnet50 --dataset voc_2007  --use_compiled_model true"
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

function correctelp(){
    #correctpointing grad_cam resnet50
    #correctpointing grad_cam vgg16


    #correctpointing rise resnet50
    #correctpointing rise vgg16

    #correctpointing gradient resnet50
    #correctpointing gradient vgg16

    #correctpointing guided_backprop resnet50
    #correctpointing guided_backprop vgg16

    correctpointing extremal_perturbation resnet50
    correctpointing extremal_perturbation vgg16
}

function correctunw(){
    correctpointing extremal_perturbation_with_unweighted_scale_and_crop resnet50
    correctpointing extremal_perturbation_with_unweighted_scale_and_crop vgg16
    }
function correctsimple(){
    correctpointing extremal_perturbation_with_simple_scale_and_crop_normalized resnet50
    correctpointing extremal_perturbation_with_simple_scale_and_crop_normalized vgg16
    }

function correctgp(){
    correctpointing gp_saliency resnet50
    correctpointing gp_saliency vgg16
    }

__runjson_completion() {
        local cur prev
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"
        prev="${COMP_WORDS[COMP_CWORD-1]}"

        # Get a list of files in the config_files/ folder
        files=$(find /root/evaluate-saliency-4/elp_with_scales/run-scripts/run-jsons/ -type f -printf "%f\n")


        # Use compgen to generate autocompletion suggestions
        COMPREPLY=( $(compgen -W "$files" -- "$cur") )
        return 0
}



function genrunscript(){
    local start_dir="`pwd`"
    local json_filename="$1"
    cdelp
    cd run-scripts
    python generate_run_script.py --json_filename run-jsons/$json_filename
    if [ -v DBG_TORCHRAY ] && [ "$DBG_TORCHRAY" -eq 1 ];then
        pythond generate_run_script.py --json_filename run-jsons/$json_filename
    else
        python generate_run_script.py --json_filename run-jsons/$json_filename
    fi
    cd $start_dir
}

complete -F __runjson_completion genrunscript
function vimrunjson(){
    local fname="$1"
    cd /root/evaluate-saliency-4/elp_with_scales/run-scripts/run-jsons/
    vim $fname
    cd - 
}
complete -F __runjson_completion vimrunjson

__runscript_completion() {
        local cur prev
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"
        prev="${COMP_WORDS[COMP_CWORD-1]}"

        # Get a list of files in the config_files/ folder
        files=$(find /root/evaluate-saliency-4/elp_with_scales/run-scripts/ -maxdepth 1 -name "*.sh" -type f -printf "%f\n")


        # Use compgen to generate autocompletion suggestions
        COMPREPLY=( $(compgen -W "$files" -- "$cur") )
        return 0
}


function vimrunscript(){
    local fname="$1"
    cd /root/evaluate-saliency-4/elp_with_scales/run-scripts
    vim /root/evaluate-saliency-4/elp_with_scales/run-scripts/$fname
    cd -
}
complete -F __runscript_completion vimrunscript

function runtorchray(){
    local fname="$1"
    cd /root/evaluate-saliency-4/elp_with_scales/
    bash run-scripts/$fname
    cd -
}
complete -F __runscript_completion runtorchray

function upload_bigfiles_other_(){
    while true;do
        rclone copy -P  /root/bigfiles/other/results-torchray aniketsinghresearch-gdrive:results-torchray
        rclone copy -P  /root/bigfiles/other/metrics-torchray aniketsinghresearch-gdrive:metrics-torchray
        sleep 10
    done

    }

function upload_bigfiles_other(){
    tmux kill-session t-rclone-bigfiles
    #tmux new-session -d -s t-rclone-bigfiles 'watch -n 10 bash -i -c "upload_bigfiles_other_"'

    tmux new-session -d -s t-rclone-bigfiles "bash -i -c \"upload_bigfiles_other_\""
    tmux a -t t-rclone-bigfiles
    }
function upload_bigfiles_dataset_(){
    while true;do
        rclone copy -P  /root/bigfiles/dataset aniketsinghresearch-gdrive:dataset
        sleep 10
    done

    }

function upload_bigfiles_dataset(){
    tmux kill-session t-rclone-dataset    
    tmux new-session -d -s t-rclone-dataset "bash -i -c \"upload_bigfiles_dataset_\""
    tmux a -t t-rclone-dataset
    }
function upload_all_gdrive(){
    upload_bigfiles_other
    upload_instance_to_gdrive
    #upload_bigfiles_dataset
}
alias vimworkflow="vim /root/evaluate-saliency-4/elp_with_scales/scripts/workflow.py"
alias vim112="vim /root/evaluate-saliency-4/elp_with_scales/run-scripts/run_vast_112.sh"
alias run112="cdelp;bash run-scripts/run_vast_112.sh"
alias cdtorchray0="cd /root/evaluate-saliency-4/TorchRay"
alias trygradcam0="cdtorchray0;python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation --arch resnet50 --dataset voc_2007"
alias cdsess="cd /root/evaluate-saliency-4/sess"
alias cdcameras="cd /root/evaluate-saliency-4/CAMERAS"
#alias trysanity="DBG_SANITY=1 pythond /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/sanity_check.py"
alias trysanity="cdcam;DBG_SANITY=1 pythond /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/sanity_check.py --imroot /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/ILSVRC2012_val_00015410.JPEG --dataset imagenet --target 13"
alias vimimagenetsynsets="vim /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/imagenet_synsets.py"
function checkallresultstorchray(){
    local fname="/tmp/doneresults.txt"
    echo "" > $fname
    local dataset=${1:-""}
    local method=${2:-""}
    local arch=${3:-""}
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
    #set -e
    local dummy_
    dirs=("/root/evaluate-saliency-4/elp_with_scales" "/root/evaluate-saliency-4/cam-benchmark" "/root/vast-utils/" "/root/evaluate-saliency-4/dutils" "/root/evaluate-saliency-4/CAMERAS" "/root/evaluate-saliency-4/sess" "/root/evaluate-saliency-4/pytorch-vgg-cifar10" "/root/evaluate-saliency-4/cifar10-fast-simple/" "/root/evaluate-saliency-4/multithresh-saliency")
    for d in "${dirs[@]}"; do
        if [ -d "$d" ]; then
            :
        else
            read -p "$d does not exist!!!. press any key to comtinue" dummy_

        fi
        tmux new-session -d -s t-git "cd $d; git s;bash"
        tma t-git
    done
    #set +e
}
######################################
#print_in_reverse(){
#    arg1=$1
#    arg2=$2
#    echo "$arg2 $arg1"
#    }
######################################
alias trybackend="DBG_VISUALIZATION=1 python -m torchray.benchmark.backend_for_run_on_image"
alias tryvisualize=trybackend
function tryvisualizesimple(){
    local imroot="000013" #imroot="000116"
    local class_id="9" #class_id="8"
    local dataset="voc_2007"
    local method="extremal_perturbation_with_simple_scale_and_crop_normalized"
    local arch="vgg16"

    python -m torchray.benchmark.backend_for_run_on_image --imroot $imroot --class_id $class_id --dataset $dataset --method $method --arch $arch
}


function runranksimplenormalized(){
    local curdir=`pwd`
    cdelp
    python examples/rank_correlation.py --arch resnet50 --dataset voc_2007 --methods extremal_perturbation_with_simple_scale_and_crop_normalized extremal_perturbation_with_simple_scale_and_crop_normalized_rng2 extremal_perturbation_with_simple_scale_and_crop_normalized_rng3  --desc  extremal_perturbation_with_simple_scale_and_crop_normalized 
    cd $curdir
}

function runrankelpgp(){
    local curdir=`pwd`
    cdelp
    python examples/rank_correlation.py --arch resnet50 --dataset voc_2007 --methods extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1 extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1_rng2 extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1_rng3  --desc  extremal_perturbation_with_simple_scale_and_crop_with_gp_log_prob
    cd $curdir
}
function runrank(){
    runrankelpgp
    runranksimplenormalized
    }
alias vimcollect="cdelp;vim scripts/collect_results.py"
alias vimcollectimages="cdelp;vim scripts/collect_images.py"
alias runcollect="cdelp;python scripts/collect_results.py"
function collectallresultsforpaper(){
    curdir=`pwd`
    cdelp
    python scripts/collect_results.py --arch resnet50
    python scripts/collect_results.py --arch vgg16
    cd $curdir
}
alias runcollectimages="cdelp;python scripts/collect_images.py"
alias vimpointing="cdelp;vim /root/evaluate-saliency-4/elp_with_scales/torchray/benchmark/pointing_game.py; cd-"
alias vimdeletiont="cdelp;vim /root/evaluate-saliency-4/elp_with_scales/torchray/benchmark/deletion_game.py; cd-"
alias trygradcam="cdelp;python examples/attribution_benchmark.py --method grad_cam --arch resnet50 --dataset voc_2007"
alias trydeletiont="cdelp;pythond examples/attribution_benchmark.py --method grad_cam --arch resnet50 --dataset voc_2007 --metrics deletion_game"
alias trypointingt="cdelp;pythond examples/attribution_benchmark.py --method grad_cam --arch resnet50 --dataset voc_2007"
alias nexttask="echo \"summarize_elp;runcollect\""
ELPGP="extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1"
ELP_SIMPLE="extremal_perturbation_with_simple_scale_and_crop_normalized"
UNW="extremal_perturbation_with_unweighted_scale_and_crop-"
function check_remaining_jan13(){
    #check_ndone "CAMERAS" resnet50
    #read -p "(Continue)" _dummy
    #check_ndone "CAMERAS" vgg16
    #read -p "(Continue)" _dummy
    #check_ndone "SESS" resnet50
    #read -p "(Continue)" _dummy
    #check_ndone "SESS" vgg16
    #read -p "(Continue)" _dummy
    check_ndone "${ELPGP}-" resnet50
    read -p "(Continue)" _dummy
   check_ndone "${ELPGP}_rng2-" resnet50
    read -p "(Continue)" _dummy
    check_ndone "${ELPGP}_rng3-" resnet50
    read -p "(Continue)" _dummy
    #check_ndone $UNW vgg16
    #read -p "(Continue)" _dummy
    #check_ndone $UNW resnet50
    #read -p "(Continue)" _dummy
    check_ndone "${ELPGP}-" vgg16
    read -p "(Continue)" _dummy
    check_ndone "${ELPGP}_rng2-" vgg16
    read -p "(Continue)" _dummy
    check_ndone "${ELPGP}_rng3-" vgg16
    read -p "(Continue)" _dummy
}
alias vimanalyzeresults="vim /root/evaluate-saliency-4/elp_with_scales/torchray/analyze_results.py"
runattributiondolist(){
    local method="$1"
    local arch="$2"
    local dofilelist="$3"
    local startdir=`pwd`
    cdelp
    python examples/attribution_benchmark.py --method $method --arch $arch --dataset voc_2007 --use_dofilelist $dofilelist
    cd $startdir
    }
alias rungradcamdolist="runattributiondolist  grad_cam  resnet50  /root/bigfiles/other/metrics-torchray/failures_for_anchor_grad_cam_arch_resnet50_imroots"
runpapermethodsdolist(){
    local arch=$1
    local dofile=$2
    runattributiondolist  grad_cam  $arch  $dofile
    runattributiondolist  gradient  $arch  $dofile 
    runattributiondolist  guided_backprop $arch $dofile 
    runattributiondolist  rise  $arch  $dofile
}
alias trypapermethodslist="runpapermethodsdolist resnet50 /root/bigfiles/other/metrics-torchray/failures_for_anchor_grad_cam_arch_resnet50_imroots"


checkupload(){
    local instance_id="$1"
    local sessions=`tmux list-sessions | cut -d: -f1`
    for s in ${sessions[@]};do
        #echo $s
        s=`python -c "if 'upload' in \"$s\":print(\"$s\")"`
        s=`python -c "if '$instance_id' in \"$s\":print(\"$s\")"`
        if [[ -z "$s" ]]; then
            :
        else
            tma $s
            fi
        done

    }
alias cdtodo="cd /root/todo"
alias cdtodo2="cd /root/todo2"
alias exampleselectfile="echo \"/root/bigfiles/other/metrics-torchray/failures_for_anchor_grad_cam_arch_resnet50_imroots\""
alias checkoldmodelsworking="cdelp;python examples/attribution_benchmark.py --method grad_cam --arch resnet50 --dataset voc_2007 --save_results false"
sshtma ()
{
    local instance_id="$1"
    ssh -t vast-$instance_id "tmux a -t t-$instance_id"
}
sshelp ()
{

    local instance_id="$1"
    ssh -t vast-$instance_id "cd $ELP;bash"
    }
alias cdcifar="cd /root/evaluate-saliency-4/cifar10-fast-simple/resnet8_fast_simple"
#===========================================================================================
function selectwhereelpgpbest(){
    local curdir=`pwd`
    cdelp
    local arch=$1
    local dataset="voc_2007"
    local methodnames=("$ELPGP" "extremal_perturbation" "$ELP_SIMPLE" "rise" "grad_cam" "gradient" "guided_backprop" "excitation_backprop")
    local anchor_method="$ELPGP"
    local anchor_state=1
    python examples/select_results.py --modelname $arch --dataset $dataset --methodnames ${methodnames[@]} --anchor_method $anchor_method --anchor_state $anchor_state --saveroot where_elp_gp_beter
    cd $curdir
}
function selectwhereelpgpbad(){
    local curdir=`pwd`
    cdelp
    local arch=$1
    local dataset="voc_2007"
    local methodnames=("$ELPGP" "extremal_perturbation")
    local anchor_method="extremal_perturbation"
    local anchor_state="1"
    python examples/select_results.py --modelname $arch --dataset $dataset --methodnames ${methodnames[@]} --anchor_method $anchor_method --anchor_state $anchor_state --saveroot failures_for_elp_gp
    cd $curdir
}
function selectwhereelpgpgoodelpcropbad(){
    local curdir=`pwd`
    cdelp
    local arch=$1
    local dataset="voc_2007"
    local methodnames=("$ELPGP" "$ELP_SIMPLE")
    local anchor_method="$ELP_SIMPLE"
    local anchor_state=-1
    python examples/select_results.py --modelname $arch --dataset $dataset --methodnames ${methodnames[@]} --anchor_method $anchor_method --anchor_state $anchor_state --saveroot where_elp_gp_beter_elp_crop
    cd $curdir
}
function selectimagesforpaper(){
    selectwhereelpgpbad vgg16
    selectwhereelpgpbest vgg16
    selectwhereelpgpgoodelpcropbad vgg16
    selectwhereelpgpbad resnet50
    selectwhereelpgpbest resnet50
    selectwhereelpgpgoodelpcropbad resnet50
}
#===========================================================================================
alias trycifar="cdelp;DBG_GRADCAM=1 python -m ipdb -c c examples/attribution_benchmark.py --method grad_cam --arch resnet8 --dataset cifar-10 --metrics deletion_game"
alias trycifarvgg="cdelp;python -m ipdb -c c examples/attribution_benchmark.py --method grad_cam --arch vgg16 --dataset cifar-10 --metrics deletion_game"
alias trymnist="cdelp;DBG_GRADCAM=1 python -m ipdb -c c examples/attribution_benchmark.py --method grad_cam --arch resnet8 --dataset mnist --metrics deletion_game"
#function visualizeforpaper(){
#    set -x
#    local imroot="000013" #imroot="000116"
#    local class_id="9" #class_id="8"
#    local dataset="voc_2007"
#    local simplemethod="extremal_perturbation_with_simple_scale_and_crop_normalized"
#    local elpgpmethod="extremal_perturbation_with_simple_scale_and_crop_with_gp"
#    local arch="resnet50"
#    local failurefile="/root/bigfiles/other/metrics-torchray/failures_for_anchor_grad_cam_arch_resnet50_imroots_and_class_ids"
#    local bestfile="/root/bigfiles/other/metrics-torchray/cherry_picked_for_anchor_grad_cam_arch_resnet50_imroots_and_class_ids"
#    #local n_failures=4
#    #local n_success=4
#    fnames=("$failurefile" "$bestfile")
#    for fname in "${fnames[@]}";do
#        local i=0
#        #python -c "with open('$failurefile','r') as f:pickle.readlines(f)"
#        mapfile -t imroot_and_class_id < "$fname"
#        #echo ${imroot_and_class_id[@]}
#        #echo ${imroot_and_class_id[0]}
#        for imroot_and_class_idi in "${imroot_and_class_id[@]}";do
#            echo "$imroot_and_class_idi"
#            read -r imroot class_id <<< "${imroot_and_class_idi[@]}"
#            echo $i
#            echo $imroot
#            echo $class_id
#            #read -p "(Continue)" _dummy
#            python -m torchray.benchmark.backend_for_run_on_image --imroot $imroot --class_id $class_id --dataset $dataset --method $elpgpmethod --arch $arch && \
#            python -m torchray.benchmark.backend_for_run_on_image --imroot $imroot --class_id $class_id --dataset $dataset --method $simplemethod --arch $arch
#            ((++i))
#            if [ "$i" -ge 4 ]; then
#                break
#            fi;
#        done
#    done
#    set +x
#}
function runsmaller() {
    set -u
    trap "set +u" EXIT
    trap "set +u" ERR
    #set -x
    #"""
    #integrated_gradient
    #grad_cam
    #guided_backprop
    #gradient
    #"""
    #methods=("integrated_gradients")
    #methods=("grad_cam" "guided_backprop" "gradient")
    save_detailed_results="true"
    #arch="resnet8"
    arch="$1"
    #dataset="cifar-10"
    dataset="$2"
    methods=("integrated_gradients" "grad_cam" "guided_backprop" "gradient" "multithresh_saliency")
    method="${3}"
    if [ "$method" == "" ];then
       :
    else
        methods=("$method") 
    fi
    #..............................................
    continue_=""
    if [ -v CONTINUE ] && [ $CONTINUE == true ]; then
        continue_="--continue_"
    fi
    #..............................................
    dry_run=""
    echo "DRY_RUN $DRY_RUN"
    if [ -v DRY_RUN ] && [ $DRY_RUN == true ]; then
        dry_run="--start 1000 --end 1004"
        #dry_run=""
        #dry_run="--start 1000 --end 1004"
    fi
    echo "$dry_run"
    #..............................................
    PYTHON="python"
    if [ -v DEBUG ] && [ "$DEBUG" == true ]; then
        PYTHON="python -m ipdb -c c"
    fi
    base_command="$PYTHON examples/attribution_benchmark.py --arch ${arch} --dataset ${dataset} --save_detailed_results ${save_detailed_results} ${dry_run} --metrics deletion_game $continue_"
    for method in "${methods[@]}";do
        full_command="$base_command --method $method"
        #echo "Im executing ${full_command}"
        cdelp
        #output=`$full_command`
        if [ -v IGNORE_METHOD ] && [ "$method" == "$IGNORE_METHOD" ]; then
            continue
            #return 1
        fi

        echo ${full_command}
        $full_command
        #&& cdresults && bash
    done
    #set +x
    }
function runallsmaller() {
    #"""
    #archs: resnet8, vgg16
    #datasets: cifar-10,cifar-100,mnist
    #"""
    # IGNORE_METHOD=multithresh_saliency runallsmaller vgg16 mnist
    set -u
    #set -x
    trap "set +u;set +x" EXIT
    trap "set +u;set +x" ERR

    local archs="${1:-(resnet8)}"
    #shift
    #archs=("resnet8")
    #local datasets=("cifar-10" "cifar-100" "mnist")
    #local default_datasets=("cifar-10")
    local default_datasets=("cifar-10" "cifar-100" "mnist")
    local datasets="${2}" 
    if [ $datasets == "" ]; then
        datasets=("${default_datasets[@]}")
    fi
    #local archs=("resnet8" "vgg16")
    #local dry_run="--start 1000 --end 1004"
    local CONTINUE=${CONTINUE:-true}
    local DRY_RUN=false
    for arch in "${archs[@]}"; do
        for dataset in "${datasets[@]}"; do
            #echo "Processing: Arch=$i, Dataset=$j"
            cmd="runsmaller $arch $dataset"
            echo "$cmd"
            eval "$cmd"
        done
    done
    #set +u
}

PASCALDIR="/root/bigfiles/dataset/voc/VOCdevkit/VOC2007/JPEGImages"




function createattributionimagesforpaper(){
    set -x
    curdir=`pwd`
    cdelp
    local dataset="voc_2007"
    local archs=("resnet50" "vgg16")
    local methodnames=("rise" "grad_cam" "gradient" "guided_backprop" "excitation_backprop")
    # local methodnames=("grad_cam")
    for arch in "${archs[@]}";do
        for method in "${methodnames[@]}";do
            local bestfile="/root/bigfiles/other/metrics-torchray/where_elp_gp_beter_anchor_extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1_arch_${arch}_imroots"

            python  examples/attribution_benchmark.py --method "$method" --arch "$arch" --dataset "$dataset" --save_detailed_results true --use_dofilelist "$bestfile"
        done
    done
    
    cd $curdir
    set +x

}
function createandcollectattributionimagesforpaper(){
    createattributionimagesforpaper
    collectimagesforpaper
}
alias cdcifarvgg="cd /root/evaluate-saliency-4/pytorch-vgg-cifar10/pytorch_vgg_cifar10"
alias vimcifarvgg="cd /root/evaluate-saliency-4/pytorch-vgg-cifar10/pytorch_vgg_cifar10/vgg.py"
function rmvisualization(){
read -p "DANGEROUS!, removing /root/bigfiles/other/metrics-torchray/visualization (y/n)" flag
if [[ "$flag" == "y" ]]; then
    echo "deleting"
    rm -rf /root/bigfiles/other/metrics-torchray/visualization 
    history -d $(($HISTCMD-1))

    fi


    }
alias rungradcamcifar10resnet8="cdelp;pythond examples/attribution_benchmark.py --method grad_cam --arch resnet8 --dataset cifar-10 --metrics deletion_game --save_detailed_results true"
alias runguidedcifar10resnet8="cdelp;pythond examples/attribution_benchmark.py --method guided_backprop --arch resnet8 --dataset cifar-10 --metrics deletion_game --save_detailed_results true  --continue_ true"
#================================================================================
alias traincifar10resnet8="cdcifar;pythond train.py"
alias traincifar100resnet8="cdcifar;pythond train.py --dataset cifar-100 --epochs 50"
alias trainmnistresnet8="cdcifar;pythond train.py --dataset mnist --epochs 10"
function trainallresnet8(){
traincifar10resnet8
traincifar100resnet8
trainmnistresnet8
    }
function trainvgg(){
    dataset=$1
    declare -A lrs
    lrs["cifar-10"]=0.05
    lrs["cifar-100"]=0.05
    lrs["mnist"]=0.005
    curdir=`pwd`
    cdcifarvgg
    echo $dataset
    lr=${lrs["${dataset}"]}
    #echo $lr
    python main.py  --arch=vgg16 --epochs 300 --dataset ${dataset} --save-dir="save_vgg16_${dataset}" --lr "$lr" |& tee "log_vgg16_${dataset}"
    cd $curdir
    }
#================================================================================
#================================================================================
#alias traincifar10vgg16="cdcifarvgg;python main.py  --arch=vgg16 --epochs 300 --dataset cifar-10 --save-dir=save_vgg16_cifar-10 |& tee -a log_$model"
#alias traincifar100vgg16="cdcifarvgg;python main.py  --arch=vgg16 --epochs 300 --dataset cifar-100 --save-dir=save_vgg16_cifar-100 |& tee -a log_$model"
#alias trainmnistvgg16="cdcifarvgg;python main.py  --arch=vgg16 --epochs 300 --dataset mnist --save-dir=save_vgg16_mnist  --lr 0.005|& tee -a log_$model"
function trainallvgg16(){
#traincifar100vgg16
#traincifar10vgg16
#trainmnistvgg16
 trainvgg cifar-10
 trainvgg cifar-100
 trainvgg mnist
    }

alias runigcifar10resnet8="cdelp;pythond examples/attribution_benchmark.py --method integrated_gradients --arch resnet8 --dataset cifar-10 --metrics deletion_game --save_detailed_results true"
alias rungroupcam="cdelp;DBG_GROUPCAM=1 pythond examples/attribution_benchmark.py --method groupcam --arch resnet50  --save_detailed_results true"
alias runscorecam="cdelp;DBG_SCORECAM=1 pythond examples/attribution_benchmark.py --method scorecam --arch resnet50  --save_detailed_results true"
alias vimgroup="vim /root/evaluate-saliency-4/elp_with_scales/torchray/wrappers_for_torchray/groupcam_wrapper.py"
alias cdtorchraywrappers="cd /root/evaluate-saliency-4/elp_with_scales/torchray/wrappers_for_torchray"
alias runmulticifar10resnet8="cdelp;DBG_MULTIWRAPPER= pythond examples/attribution_benchmark.py --method multithresh_saliency --arch resnet8 --dataset cifar-10 --metrics deletion_game --save_detailed_results true"
alias runmulticifar100resnet8="cdelp;DBG_MULTIWRAPPER= pythond examples/attribution_benchmark.py --method multithresh_saliency --arch resnet8 --dataset cifar-100 --metrics deletion_game --save_detailed_results true"
alias runmultimnistresnet8="cdelp;pythond examples/attribution_benchmark.py --method multithresh_saliency --arch resnet8 --dataset mnist --metrics deletion_game --save_detailed_results true"
alias runmulticifar10vgg16="cdelp;DBG_MULTIWRAPPER= pythond examples/attribution_benchmark.py --method multithresh_saliency --arch vgg16 --dataset cifar-10 --metrics deletion_game --save_detailed_results true"
alias runmultimnistvgg16="cdelp;pythond examples/attribution_benchmark.py --method multithresh_saliency --arch vgg16 --dataset mnist --metrics deletion_game --save_detailed_results true"
alias runmulticifar100vgg16="cdelp;DBG_MULTIWRAPPER= pythond examples/attribution_benchmark.py --method multithresh_saliency --arch vgg16 --dataset cifar-100 --metrics deletion_game --save_detailed_results true"
alias runigosppcifar10resnet8="cdelp;pythond examples/attribution_benchmark.py --method IGOSpp --arch resnet8 --dataset cifar-10 --metrics deletion_game --save_detailed_results true"
alias vimtorchraysmallerdataset='vim /root/evaluate-saliency-4/elp_with_scales/torchray/benchmark/smaller_datasets.py'
alias vimtorchraymodels='vim /root/evaluate-saliency-4/elp_with_scales/torchray/benchmark/models.py'
function undo_e(){
    set +e
    }
#function runallimagenet(){
#    set -e
#    trap undo_e EXIT
#    trap undo_e ERR
#    dataset="imagenet-5000"
#    archs=("vgg16" "resnet50")
#    #methods=("grad_cam" "rise" "groupcam" "scorecam" "guided_backprop" "gradient" "SESS")
#    methods=("rise" "groupcam" "scorecam" "SESS")
#    use_compiled_model=false
#    curdir=`pwd`
#    cdelp
#    for arch in "${archs[@]}";do
#        for method in "${methods[@]}";do
#            python examples/attribution_benchmark.py --method $method --continue_ --arch $arch --dataset $dataset --save_detailed_results true --use_compiled_model ${use_compiled_model}
#        done
#    done
#    cd $curdir
#    }
alias vimmultiwrapper="vim /root/evaluate-saliency-4/multithresh-saliency/multithresh_saliency/wrapper_for_torchray.py"
alias vimtorchraydataset='vim /root/evaluate-saliency-4/elp_with_scales/torchray/benchmark/datasets.py'
function tmn2(){
# tmn2 t-eric3
    name="$1"
#name="t-eric3"
    datestr=`python -c "import time;print(time.strftime('%d-%m-%Y-%H-%M-%S'))"`
    recordname="tmux-session-logs/${name}-${datestr}.txt"
    tmux new-session -d -s "$name" "script $recordname"
# start a tmux session in background (d), run the script command in it, with the filename tmux-session-logs/t-eric3.txt
    tmux a -t $name
# attach to the back ground session ( i.e. bring it foreground)
    }
alias vimplotdeletion="vim /root/evaluate-saliency-4/elp_with_scales/torchray/helpers/plot_deletion.py"
function summarize_all_deletion(){
    local datasets=("cifar-10" "cifar-100" "mnist")
    if [ -v DATASET ]; then
       datasets=("$DATASET")
    fi
    #local methods=("integrated_gradients" "grad_cam" "guided_backprop" "gradient")
    local methods=("${methodnames_for_smaller_multi_paper[@]}")
    if [ -v METHOD ]; then
       methods=("$METHOD")
    fi
    local archs=("resnet8" "vgg16")
    if [ -v ARCH ]; then
       archs=("$ARCH")
    fi
    for dataset in "${datasets[@]}"
    do
        for method in "${methods[@]}"
        do
             if [ -v IGNORE_METHOD ] && [ "$IGNORE_METHOD" == "$method" ]; then
                 continue
             fi
           
            for arch in "${archs[@]}"
            do
                if [ -v IGNORE_ARCH ] && [ "$IGNORE_ARCH" == "$arch" ]; then
                     continue
                fi
                python /root/evaluate-saliency-4/elp_with_scales/torchray/helpers/summarize_deletion.py  --method "${method}" --arch "${arch}" --dataset "${dataset}"
                #return 0
            done
        done
    done
}
function remember(){
    set -x
    cmd="$*"
    if [ "$cmd" == '-l' ] || [  "$cmd" == '--last' ];then
        lastcmd="`history | tail -n 2 | head -n 1`"
        echo "$lastcmd" >> /root/myhistory/history_
    elif [ "${cmd:0:2}" == '-m' ] ; then
        echo "-m"
        echo "$cmd"
        lastcmd="${cmd:3}"
        echo "$lastcmd" >> /root/myhistory/history_
    else
        echo "$cmd" >> /root/myhistory/history_
        eval "$cmd"
    fi
    set +x
}
function myhistory(){
    vim /root/myhistory/history_
}
alias vimdebugmulti="vim /root/debug-multi"
multi="/root/evaluate-saliency-4/multithresh-saliency/multithresh_saliency/multithresh_saliency_.py"
alias vimmulti="vim /root/evaluate-saliency-4/multithresh-saliency/multithresh_saliency/multithresh_saliency_.py"
alias vimelpmasking="vim /root/evaluate-saliency-4/multithresh-saliency/multithresh_saliency/elp_masking.py"
alias vimtorchrayutils="vim /root/evaluate-saliency-4/elp_with_scales/torchray/utils.py"
igosppwrapper="/root/evaluate-saliency-4/elp_with_scales/torchray/wrappers_for_torchray/IGOSpp_wrapper.py"
alias vimigosppwrapper="vim $igosppwrapper"
sesswrapper="/root/evaluate-saliency-4/elp_with_scales/torchray/wrappers_for_torchray/SESS_wrapper.py"
alias vimsesswrapper="vim $sesswrapper"
alias cdigospp="cd /root/evaluate-saliency-4/IGOS_pp/IGOS_pp"
alias vimigospp="vim /root/evaluate-saliency-4/IGOS_pp/IGOS_pp/methods.py"
alias cdaudio="cd /root/record_audio"
alias vimtodovideo="vimtodo video"
alias vimtodoerc="vimtodo erc"
alias vimmultialias="vim /root/vast-utils/multi_alias.sh;source /root/vast-utils/multi_alias.sh"
source /root/vast-utils/multi_alias.sh
alias vimsummarizedeletion="vim /root/evaluate-saliency-4/elp_with_scales/torchray/helpers/summarize_deletion.py"
alias tryselectdeletion="cdelp;pythond2 examples/select_results.py --modelname vgg16 --methodnames IGOSpp extremal_perturbation multithresh_saliency scorecam groupcam grad_cam --dataset imagenet-5000 --anchor_method multithresh_saliency --anchor_state 1"
function vimgenruntorchray(){
    local jsonfname="$1"
    vimrunjson "$jsonfname"
    genrunscript "$jsonfname"
    local runjsonfolder="/root/evaluate-saliency-4/elp_with_scales/run-scripts/run-jsons"
    local shfname0=`python -c "import json;f = open(\"$runjsonfolder/$jsonfname\",'r');loaded = json.load(f);print('run_vast_' + loaded['instance_id'] + '.sh')"`
    #local shfname="/root/evaluate-saliency-4/elp_with_scales/run-scripts/$shfname0"
    runtorchray $shfname0
}
complete -F __runjson_completion vimgenruntorchray
#function newalias(){
#
#}
alias scratchbash="vim /tmp/dummy.sh && bash /tmp/dummy.sh"
alias scratchbash2="vim /tmp/dummy.sh && source /tmp/dummy.sh"
alias scratchpy="vim /tmp/dummy.py && python -m ipdb -c c /tmp/dummy.py"

function summarizedeletion(){
    trap "set +x" EXIT
    trap "set +x" ERR
    set -x
    curdir=`pwd`
    cdelp
    if [ -v method ] && [ -v arch ]  && [ -v dataset ];then
        :
    else
        echo "variables not set"
        return 1
        fi
    cmd="python torchray/helpers/summarize_deletion.py --method $method --arch $arch --dataset $dataset"
    #echo $cmd
    eval $cmd
    cd $curdir
}

function summarizedeletionforarch(){
    #arch="$1"
    if [ -v arch ]; then
        :
    else
        echo "variables not set"
        return 1
        fi
    methods=("integrated_gradients" "gradient" "grad_cam")
    datasets=("cifar-10" "cifar-100" "mnist")
    for method in "${methods[@]}"; do
        for dataset in "${datasets[@]}"; do
            cmd="method=$method arch=$arch dataset=$dataset summarizedeletion"
            echo "$cmd"
            eval $cmd
        done
    done

}
function summarizealldeletion() {
    arch=resnet8 summarizedeletionforarch
    arch=vgg16 summarizedeletionforarch
}
function plotdeletion(){
    trap "cd $curdir" EXIT
    trap "cd $curdir" ERR
    cdelp
    cmd="python torchray/helpers/plot_deletion.py --arch $arch --dataset $dataset"
    echo "$cmd"
    #eval "$cmd"
}
function plotalldeletion() {
    archs=("vgg16" "resnet8")
    datsets=("cifar-10" "cifar-100" "mnist")
    for arch in "${archs[@]}";do
        for dataset in "${datasets[@]}";do
           cmd=" dataset=$dataset arch=$arch plotdeletion"
           echo "$cmd"
           eval "$cmd"
        done
    done
}
comparemasking="/root/evaluate-saliency-4/elp_with_scales/scripts/compare_igos_multi_masking.py"
export alias vimcomparemasking="vim /root/evaluate-saliency-4/elp_with_scales/scripts/compare_igos_multi_masking.py"
#alias visualizemultiimagenetvgg16="cdelp;DBG_MULTIWRAPPER= pythond examples/attribution_benchmark.py --method multithresh_saliency --arch vgg16 --dataset cifar-100 --metrics deletion_game --save_detailed_results true"
alias workoncomparemasking="while true;do vim -O $multi -O $comparemasking && cdparent $comparemasking && python $comparemasking &&cd -;done"

methodnames_for_imagenet_multi_paper=("scorecam" "grad_cam" "groupcam" "IGOSpp" "extremal_perturbation" "multithresh_saliency")
methodnames_for_smaller_multi_paper=("gradient" "guided_backprop" "grad_cam" "integrated_gradients" "multithresh_saliency")
archs_for_imagenet_multi_paper=("vgg16" "resnet50")
archs_for_smaller_multi_paper=("vgg16" "resnet8")
smaller_datasets_for_multi_paper=("cifar-10" "cifar-100" "mnist")
function getmethodnamesmultipaper(){
    echo "methods for imagenet ${methodnames_for_imagenet_multi_paper[@]}"
    echo "archs for imagenet ${archs_for_imagenet_multi_paper[@]}"
    echo "methods for smaller ${methodnames_for_smaller_multi_paper[@]}"
    echo "archs for smaller ${archs_for_smaller_multi_paper[@]}"
}
function check_ndone_imagenet_multi(){
    methodnames=("${methodnames_for_imagenet_multi_paper[@]}")
    archs=("${archs_for_imagenet_multi_paper[@]}")
    dataset="imagenet-5000"
    for arch in "${archs[@]}";do
        for method in "${methodnames[@]}"; do
            #echo $method $arch
            check_ndone $method $arch $dataset
            done
    done
}
function check_ndone_smaller_multi(){
    datasets=("${smaller_datasets_for_multi_paper[@]}")
    methodnames=("${methodnames_for_smaller_multi_paper[@]}")
    archs=("${archs_for_smaller_multi_paper[@]}")
    for arch in "${archs[@]}";do
        for dataset in "${datasets[@]}"; do
            for method in "${methodnames[@]}"; do
                if [ $dataset == "cifar-10" ]; then
                    dataset="${dataset}-"
                    fi
                method="${method}-"
                #echo $method $arch
                check_ndone $method $arch $dataset
                #return 1
            done
            echo "================================================================"
        done
    done
}
alias vimgradientnan="vim +276 /root/evaluate-saliency-4/elp_with_scales/torchray/attribution/common.py"
alias vimfastapi="vim /root/fastapi-topics/topics"
function collectdeletion(){
    echo "hi"
    local arch="${1:-resnet8}"
    local dataset="${2:-mnist}"
    cmd="python -m ipdb -c c $ELP/scripts/collect_deletion.py --arch $arch --dataset $dataset"
    echo $cmd
    eval "$cmd"

}
function runsummarizecollectdeletion(){
summarize_all_deletion
collectdeletion
}
alias workoncollectdeletion="vim  -O $ELP/scripts/collect_deletion.py -O /root/evaluate-saliency-4/elp_with_scales/torchray/helpers/plot_deletion.py;collectdeletion"
function addtodo2(){
    echo "$*" >> /root/todo2/todo2
}
#ADDNEW
function vimallrun(){
    local curdir=`pwd`
    cdrunscripts
    local runscripts_=$(ls run*.sh)

    # Initialize an empty array
    local runscripts=()

    # Use a while loop to read each line of the ls output into the array
    while IFS= read -r file; do
        runscripts+=("`realpath $file`")
    done <<< "$runscripts_"

    for runscript in ${runscripts[@]};do
        vim $runscript
        done 
    cd $curdir
}

function collectimagesforpaper(){
    set -x
    fnames=${*:-("bestfile" "failurefile" "betterthancropfile")}
    curdir=`pwd`
    cdelp
    local dataset="voc_2007"
    local archs=("resnet50" "vgg16")
    # local n_visualize=4
    for arch in ${archs[@]};do
        local bestfile="/root/bigfiles/other/metrics-torchray/where_elp_gp_beter_anchor_extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1_arch_${arch}_imroots_and_class_ids"
        #local failurefile="/root/bigfiles/other/metrics-torchray/failures_for_elp_gp_anchor_extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1_arch_${arch}_imroots_and_class_ids"
        local failurefile="/root/bigfiles/other/metrics-torchray/failures_for_elp_gp_anchor_extremal_perturbation_arch_${arch}_imroots_and_class_ids"
        local betterthancropfile="/root/bigfiles/other/metrics-torchray/where_elp_gp_beter_elp_crop_anchor_${ELP_SIMPLE}_arch_${arch}_imroots_and_class_ids"
        #fnames=("$bestfile" "$failurefile" "$betterthancropfile")
        #fnames=("$failurefile" "$betterthancropfile")
        fnames=("$bestfile")
        # cdelp
        

        for fname in "${fnames[@]}";do
            local i=0
            mapfile -t imroot_and_class_id < "$fname"
            for imroot_and_class_idi in "${imroot_and_class_id[@]}";do
                echo "$imroot_and_class_idi"
                read -r imroot class_id <<< "${imroot_and_class_idi[@]}"
                echo $i
                echo $imroot
                echo $class_id
                if [ "$fname" == "$bestfile" ]; then
                    python scripts/collect_images.py --dataset $dataset  --arch $arch --imroot "${imroot}" --class_id "${class_id}"
                else
                    python scripts/collect_images.py --dataset $dataset  --arch $arch --imroot "${imroot}" --class_id "${class_id}" --methodnames extremal_perturbation extremal_perturbation_with_simple_scale_and_crop_normalized  extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1
                fi
                ((++i))
                # if [ "$i" -ge $n_visualize ]; then
                #     break
                # fi;
            done
        done
    done
    cd $curdir
    set +x
}

function visualizeforpaper(){
    set -x
    local dataset="voc_2007"
    local simplemethod="extremal_perturbation_with_simple_scale_and_crop_normalized"
    local elpgpmethod="extremal_perturbation_with_simple_scale_and_crop_with_gp"
    local archs=("resnet50" "vgg16")

    for arch in ${archs[@]};do
        #local arch="resnet50"
        #local failurefile="/root/bigfiles/other/metrics-torchray/failures_for_anchor_grad_cam_arch_resnet50_imroots_and_class_ids"
        #local bestfile="/root/bigfiles/other/metrics-torchray/cherry_picked_for_anchor_grad_cam_arch_resnet50_imroots_and_class_ids"
        local bestfile="/root/bigfiles/other/metrics-torchray/where_elp_gp_beter_anchor_extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1_arch_${arch}_imroots_and_class_ids"
        local failurefile="/root/bigfiles/other/metrics-torchray/failures_for_elp_gp_anchor_extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1_arch_${arch}_imroots_and_class_ids"
        local betterthancropfile="/root/bigfiles/other/metrics-torchray/where_elp_gp_beter_elp_crop_anchor_extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1_arch_${arch}_imroots_and_class_ids"

        #local n_failures=4
        #local n_success=4
        local n_visualize=4
        fnames=("$failurefile" "$bestfile" "$betterthancropfile")
        for fname in "${fnames[@]}";do
            local i=0
            # python -c "with open('$failurefile','r') as f:pickle.readlines(f)"
            mapfile -t imroot_and_class_id < "$fname"
            #echo ${imroot_and_class_id[@]}
            #echo ${imroot_and_class_id[0]}
            for imroot_and_class_idi in "${imroot_and_class_id[@]}";do
                echo "$imroot_and_class_idi"
                read -r imroot class_id <<< "${imroot_and_class_idi[@]}"
                echo $i
                echo $imroot
                echo $class_id
                #read -p "(Continue)" _dummy
                python -m torchray.benchmark.backend_for_run_on_image --imroot $imroot --class_id $class_id --dataset $dataset --method $elpgpmethod --arch $arch && \
                python -m torchray.benchmark.backend_for_run_on_image --imroot $imroot --class_id $class_id --dataset $dataset --method $simplemethod --arch $arch
                ((++i))
                if [ "$i" -ge $n_visualize ]; then
                    break
                fi;
            done
        done
    done
    collectimagesforpaper
    set +x
}

