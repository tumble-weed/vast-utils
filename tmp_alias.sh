#set -a
results2=/root/bigfiles/other/results-torchray2
alias cdresults2="cd ${results2}"
workfeb6(){
echo """
- finish smaller with "both"
- collect deletion  ( add flag for road)
- plot deletion
"""
#workondeletionsmalldataset
#- redo the insertion/deletion results
#- summarize all deletion for smaller
#- plot graphs for cifar etc:
#    add multithresh saliency to plot

#- figure out why gradcam does not have saliency, was it run before? runall?
#   - runscripts, runjson and imagenet grad_cam
# see if we can remove ticks 
# see if self saliency directory is correct
# see if self saliency panel directory is correct

}
workfeb5(){
echo """
- plot graphs for cifar etc:
    add multithresh saliency to plot
"""
#- figure out why gradcam does not have saliency, was it run before? runall?
#   - runscripts, runjson and imagenet grad_cam
# see if we can remove ticks 
# see if self saliency directory is correct
# see if self saliency panel directory is correct
}
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
#alias trygradcamcompile="TORCHDYNAMO_REPRO_AFTER=dynamo TORCHDYNAMO_REPRO_LEVEL=4 python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation   --end 100 --arch resnet50 --dataset voc_2007  --use_compiled_model true"
alias tryscorecamcompile="cdelp; python -m ipdb -c c examples/attribution_benchmark.py --method scorecam  --arch vgg16 --dataset voc_2007  --use_compiled_model true --save_detailed_results true"
alias tryrisecompile="cdelp; python -m ipdb -c c examples/attribution_benchmark.py --method rise  --arch vgg16 --dataset voc_2007  --use_compiled_model true --save_detailed_results true"
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
        local COMPREPLY=()
        local cur="${COMP_WORDS[COMP_CWORD]}"
        local prev="${COMP_WORDS[COMP_CWORD-1]}"

        # Get a list of files in the config_files/ folder
        local files=$(find /root/evaluate-saliency-4/elp_with_scales/run-scripts/run-jsons/ -type f -printf "%f\n")


        # Use compgen to generate autocompletion suggestions
        local COMPREPLY=( $(compgen -W "$files" -- "$cur") )
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
        local COMPREPLY=()
        local cur="${COMP_WORDS[COMP_CWORD]}"
        local prev="${COMP_WORDS[COMP_CWORD-1]}"

        # Get a list of files in the config_files/ folder
        local files=$(find /root/evaluate-saliency-4/elp_with_scales/run-scripts/ -maxdepth 1 -name "*.sh" -type f -printf "%f\n")


        # Use compgen to generate autocompletion suggestions
        local COMPREPLY=( $(compgen -W "$files" -- "$cur") )
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
    upload_bigfiles_dataset
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
    local dirs=("/root/evaluate-saliency-4/elp_with_scales" "/root/evaluate-saliency-4/cam-benchmark" "/root/vast-utils/" "/root/evaluate-saliency-4/dutils" "/root/evaluate-saliency-4/CAMERAS" "/root/evaluate-saliency-4/sess" "/root/evaluate-saliency-4/pytorch-vgg-cifar10" "/root/evaluate-saliency-4/cifar10-fast-simple/" "/root/evaluate-saliency-4/multithresh-saliency")
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
    local curdir=`pwd`
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
    local s
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
function selectwheremultibest(){
    local curdir=`pwd`
    cdelp
    local arch=$1
    local dataset="imagenet-5000"
    local methodnames=("${methodnames_for_imagenet_multi_paper[@]}")
    #local methodname="$methodname"
    if [ -v methodname ]; then
        methodnames=("$methodname")
    fi
    local anchor_method="multithresh_saliency"
    local anchor_state=min
    #local evaluations=("pointing" "pointing_difficult")
    #local evaluations=("insertion" "deletion")
    local evaluations=("deletion")
    python -m ipdb -c c examples/select_results.py --modelname $arch --dataset $dataset --methodnames ${methodnames[@]} --anchor_method $anchor_method --anchor_state $anchor_state --saveroot where_multi_beter --evaluations ${evaluations[@]}
    cd $curdir
}

function workonselectwheremultibest(){
    echo """
- ensure that the arch has deletion in all the results
- fix the set trace in select
"""
    vim $ELP/examples/select_results.py
    selectwheremultibest vgg16
}
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
#mvsmallernew(){
#    echo "hi"
#}
#mvsmallerwindow5(){
#    cdresults2
#    local dirs=`ls -d *-multithresh_saliency_window_size5*/`
#    #echo "${dirs[@]}"
#    for d in ${dirs[@]}; do
#        local cmd="mv $d ../results-torchray/"
#        echo "---"
#        echo "$cmd"
#        eval "$cmd"
#    done
#    cd -
#}

#mvsmaller(){
#    echo "will move 800 epoch+insertion runs to another folder"
##    cdresults
##    mv cifar-10-multithresh_saliency-resnet8/ small_dataset_800_epoch_multithresh_saliency  
##    mv cifar-10-multithresh_saliency-vgg16/ small_dataset_800_epoch_multithresh_saliency
##    mv cifar-100-multithresh_saliency-resnet8/ small_dataset_800_epoch_multithresh_saliency
##    mv cifar-100-multithresh_saliency-vgg16/ small_dataset_800_epoch_multithresh_saliency
##    mv mnist-multithresh_saliency-resnet50/ small_dataset_800_epoch_multithresh_saliency
##    mv mnist-multithresh_saliency-resnet8/ small_dataset_800_epoch_multithresh_saliency
##    mv mnist-multithresh_saliency-vgg16/ small_dataset_800_epoch_multithresh_saliency
##    cd -
#}
runsmallergradientguidedbp(){
    #DEBUG=true runsmaller vgg16 cifar-100 multithresh_saliency
    #DEBUG=true runsmaller vgg16 mnist multithresh_saliency
    #DEBUG=true runsmaller vgg16 cifar-10 multithresh_saliency
    cdelp
    #local PYTHON="python -m ipdb -c c"
    local PYTHON="python"
    local save_detailed_results="true"
    local dry_run=""
    local continue_=""
    local dataset
    local arch
    local method
    local methods=("guided_backprop" "gradient")
    for dataset in "${smaller_datasets_for_multi_paper[@]}";do
        for arch in "${archs_for_smaller_multi_paper[@]}";do
            for method in "${methods[@]}"; do
                local cmd="DBG_LANDATALOADER=$DBG_LANDATALOADER $PYTHON examples/attribution_benchmark.py --arch ${arch} --dataset ${dataset} --save_detailed_results ${save_detailed_results} ${dry_run} --metrics deletion_game $continue_ --use_landataloader false --method ${method}"
                echo "$cmd"
                eval "$cmd"

                #return 0
        done
        done
    done
    cd -
}

runsmallernew(){
    #DEBUG=true runsmaller vgg16 cifar-100 multithresh_saliency
    #DEBUG=true runsmaller vgg16 mnist multithresh_saliency
    #DEBUG=true runsmaller vgg16 cifar-10 multithresh_saliency
    for dataset in "${smaller_datasets_for_multi_paper[@]}";do
        for arch in "${archs_for_smaller_multi_paper[@]}";do
    local cmd="CONTINUE=false runsmaller $arch $dataset multithresh_saliency"
    echo "$cmd"
    eval "$cmd"
        done
    done
}
alias sshall="ssh vast-114 && ssh vast-115 && ssh vast-116 && ssh vast-117"
runsmallernew2(){
    #DEBUG=true runsmaller vgg16 cifar-100 multithresh_saliency
    #DEBUG=true runsmaller vgg16 mnist multithresh_saliency
    #DEBUG=true runsmaller vgg16 cifar-10 multithresh_saliency
    cdelp
    #local PYTHON="python -m ipdb -c c"
    local PYTHON="python"
    local save_detailed_results="true"
    local dry_run=""
    local continue_=""
    for dataset in "${smaller_datasets_for_multi_paper[@]}";do
        for arch in "${archs_for_smaller_multi_paper[@]}";do
            local cmd="DBG_LANDATALOADER=$DBG_LANDATALOADER $PYTHON examples/attribution_benchmark.py --arch ${arch} --dataset ${dataset} --save_detailed_results ${save_detailed_results} ${dry_run} --metrics deletion_game $continue_ --use_landataloader true --window_size 5 --method multithresh_saliency"
            echo "$cmd"
            eval "$cmd"
            #return 0
        done
    done
    cd -
}
#runallsmaller16(){
#    DEBUG=true runsmaller vgg16 cifar-10 multithresh_saliency
#    runsmaller vgg16 cifar-100 multithresh_saliency
#    runsmaller vgg16 mnist multithresh_saliency
#    }
#runallsmaller8relu(){
#    #======================================================================
#    ## everything but multithresh_saliency
#    #local use_landataloader=false
#    #local methodnames_for_smaller_multi_paper=("gradient" "guided_backprop" "grad_cam" "integrated_gradients")
#    #local CONTINUE=true
#    #======================================================================
#    GAME_TYPE=both DEBUG=false runsmaller resnet8_relu cifar-10 
#    GAME_TYPE=both runsmaller resnet8_relu cifar-100
#    GAME_TYPE=both runsmaller resnet8_relu mnist
#    }
#runallmultismaller8relu(){
#    GAME_TYPE=both DEBUG=false runsmaller resnet8_relu cifar-10 multithresh_saliency
#    GAME_TYPE=both runsmaller resnet8_relu cifar-100 multithresh_saliency
#    GAME_TYPE=both runsmaller resnet8_relu mnist multithresh_saliency
#    }
runallguidedsmaller8relu(){
    #local DBG_LANDATALOADER=1
    local use_landataloader=false
    runsmaller resnet8_relu cifar-10 guided_backprop
    #runsmaller resnet8_relu cifar-100 guided_backprop
    #runsmaller resnet8_relu mnist guided_backprop
    }
rungametypeablationsmaller(){
    local DRY_RUN=false
    local DBG_GAME_ABLATION_MAR8=0
    local archs=("${archs_for_smaller_multi_paper[@]}")
    if [ -v ARCH ]; then
        archs=("$ARCH")
    fi
    local datasets=("${smaller_datasets_for_multi_paper[@]}")
    if [ -v DATASET ]; then
        datasets=("$DATASET")
    fi
    local game_types=("insertion" "deletion")
    if [ -v GAME_TYPE ]; then
        game_types=("$GAME_TYPE")
    fi
    for arch in "${archs[@]}"; do
        for dataset in "${datasets[@]}"; do
            for game_type in "${game_types[@]}"; do 
                GAME_TYPE=${game_type} DEBUG=false runsmaller $arch $dataset multithresh_saliency
            done
        done
    done
    #GAME_TYPE=both runsmaller resnet8_relu cifar-100 multithresh_saliency
    #GAME_TYPE=both runsmaller resnet8_relu mnist multithresh_saliency
    }
alias runinsertionvgg16="ARCH=vgg16 GAME_TYPE=insertion rungametypeablationsmaller"
alias runinsertionresnet8_relu="ARCH=resnet8_relu GAME_TYPE=insertion rungametypeablationsmaller"
alias rundeletionvgg16="ARCH=vgg16 GAME_TYPE=deletion rungametypeablationsmaller"
alias rundeletionresnet8_relu="ARCH=resnet8_relu GAME_TYPE=deletion rungametypeablationsmaller"
alias rundeletionresnet8relucifar100="DATASET=cifar-100 ARCH=resnet8_relu GAME_TYPE=deletion rungametypeablationsmaller"
alias runinsertionresnet8relucifar100="DATASET=cifar-100 ARCH=resnet8_relu GAME_TYPE=insertion rungametypeablationsmaller"
alias rundeletionvgg16cifar100="DATASET=cifar-100 ARCH=vgg16 GAME_TYPE=deletion rungametypeablationsmaller"
alias runinsertionvgg16cifar100="DATASET=cifar-100 ARCH=vgg16 GAME_TYPE=insertion rungametypeablationsmaller"
runnareasablationsmaller(){
    local DRY_RUN=false
    local DBG_N_AREAS_ABLATION_MAR14=0
    local DEBUG=false
    local archs=("${archs_for_smaller_multi_paper[@]}")
    if [ -v ARCH ]; then
        archs=("$ARCH")
    fi
    local datasets=("${smaller_datasets_for_multi_paper[@]}")
    if [ -v DATASET ]; then
        datasets=("$DATASET")
    fi
    local n_areas=(10 30 40)
    if [ -v N_AREAS ]; then
        n_areas=("${N_AREAS}")
    fi
        for arch in "${archs[@]}"; do
            for dataset in "${datasets[@]}"; do
                for n_areasi in "${n_areas[@]}"; do 
                    N_AREAS=${n_areasi} DEBUG=${DEBUG} GAME_TYPE="both" runsmaller $arch $dataset multithresh_saliency
                done
            done
        done
}
alias runnareas40vgg16cifar100="DATASET=cifar-100 ARCH=vgg16 N_AREAS=40 runnareasablationsmaller"

tmaablationall(){
local sessions=("t-ablation" "t-ablation2" "t-ablation3" "t-ablation4" "t-ablation5" "t-ablation6" "t-ablation7" "t-ablation8")
local sess
for sess in "${sessions[@]}"; do
    tma $sess
done
}
checkndonegametypeablation(){
    local dataset
    local arch
    local game_type

    local methods=("multithresh_saliency" "multithresh_saliency_game_typedeletion")
    for dataset in "${smaller_datasets_for_multi_paper[@]}";do
        for arch in "${archs_for_smaller_multi_paper[@]}";do
            for method in "${methods[@]}";do
                local methoddir=${dataset}-${method}-${arch}
                echo $methoddir
                ls $TORCHRAYRESULTS/${methoddir} | wc -l
                done
            done
        done
}
checkndonenareasablation(){
    local dataset
    local arch
    local game_type=both
    local n_areass=(10 30 40)
    local method="multithresh_saliency_game_type${game_type}"
    for dataset in "${smaller_datasets_for_multi_paper[@]}";do
        for arch in "${archs_for_smaller_multi_paper[@]}";do
            for n_areas in "${n_areass[@]}";do
                local methoddir=${dataset}-${method}_n_areas${n_areas}-${arch}
                echo $methoddir
                ls $TORCHRAYRESULTS/${methoddir} | wc -l
                done
            done
        done
}
alias clear2="echo -e \"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\""
function runsmaller() {
    #set -u
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
    #arch="resnet8"
    local arch="$1"
    #dataset="cifar-10"
    local dataset="$2"
    #local methods=("integrated_gradients" "grad_cam" "guided_backprop" "gradient" "multithresh_saliency")
    local methods=("${methodnames_for_smaller_multi_paper[@]}")
    local method="${3}"
    if [ "$method" == "" ];then
       :
    else
        methods=("$method") 
    fi
    #..............................................
    local continue_=""
    if [ -v CONTINUE ] && [ $CONTINUE == true ]; then
        continue_="--continue_"
    fi
    #..............................................
    local dry_run=""
    echo "DRY_RUN $DRY_RUN"
    if [ -v DRY_RUN ] && [ $DRY_RUN == true ]; then
        dry_run="--start 1000 --end 1004"
        #dry_run=""
        #dry_run="--start 1000 --end 1004"
    fi
    echo "$dry_run"
    echo "hi"
    #..............................................
    if [ -v use_landataloader ]; then
        :
    else
        local use_landataloader=true
    fi
    #..............................................
    local PYTHON="python"
    if [ -v DEBUG ] && [ "$DEBUG" == true ]; then
        PYTHON="python -m ipdb -c c"
    fi

    local save_detailed_results="true"
    if [ -v SAVE_DETAILED_RESULTS ]; then
        save_detailed_results="${SAVE_DETAILED_RESULTS}"
    fi
    #..............................................
    local use_compiled_model=""
    if [ ${USE_COMPILED_MODEL} == true ]; then
        use_compiled_model="--use_compiled_model true"
    fi
    #..............................................

    local base_command="DBG_LANDATALOADER=$DBG_LANDATALOADER $PYTHON examples/attribution_benchmark.py --arch ${arch} --dataset ${dataset} --save_detailed_results ${save_detailed_results} ${dry_run} --metrics deletion_game $continue_ --use_landataloader ${use_landataloader} ${use_compiled_model}"
    for method in "${methods[@]}";do
        local full_command="$base_command --method $method"
        #echo "Im executing ${full_command}"
        cdelp
        #output=`$full_command`
        if [ -v IGNORE_METHOD ] && [ "$method" == "$IGNORE_METHOD" ]; then
            continue
            #return 1
        fi
        echo ${GAME_TYPE} ${N_AREAS}
        echo ${full_command}
        eval "$full_command"
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
    #set -u
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
            local cmd="runsmaller $arch $dataset"
            echo "$cmd"
            eval "$cmd"
        done
    done
    #set +u
}

PASCALDIR="/root/bigfiles/dataset/voc/VOCdevkit/VOC2007/JPEGImages"




function createattributionimagesforpaper(){
    set -x
    local curdir=`pwd`
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
alias traincifar10resnet8="cdcifar;pythond train.py --non_lin relu"
alias traincifar100resnet8="cdcifar;pythond train.py --dataset cifar-100 --epochs 50 --non_lin relu"
alias trainmnistresnet8="cdcifar;pythond train.py --dataset mnist --epochs 10 --non_lin relu"
function trainallresnet8(){
traincifar10resnet8
traincifar100resnet8
trainmnistresnet8
    }
function trainvgg(){
    local dataset=$1
    declare -A lrs
    lrs["cifar-10"]=0.05
    lrs["cifar-100"]=0.05
    lrs["mnist"]=0.005
    local curdir=`pwd`
    cdcifarvgg
    echo $dataset
    local lr=${lrs["${dataset}"]}
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
    local name="$1"
#name="t-eric3"
    local datestr=`python -c "import time;print(time.strftime('%d-%m-%Y-%H-%M-%S'))"`
    local recordname="tmux-session-logs/${name}-${datestr}.txt"
    tmux new-session -d -s "$name" "script $recordname"
# start a tmux session in background (d), run the script command in it, with the filename tmux-session-logs/t-eric3.txt
    tmux a -t $name
# attach to the back ground session ( i.e. bring it foreground)
    }
alias vimplotdeletion="vim /root/evaluate-saliency-4/elp_with_scales/torchray/helpers/plot_deletion.py"

function summarize_all_deletion_road_multi_game_type_ablation(){
    local imputation="road"
    local methods=("multithresh_saliency" "multithresh_saliency_game_typedeletion")
    #local methodnames_for_smaller_multi_paper=("${methodnames_for_smaller_multi_paper[@]}")
    #methodnames_for_smaller_multi_paper+=("multithresh_saliency_game_typeboth")
    #methodnames_for_smaller_multi_paper+=("multithresh_saliency_window_size5_game_typeboth")
    summarize_all_deletion_small
}

function summarize_all_deletion_road_small(){
    local imputation="road"
    local methodnames_for_smaller_multi_paper=("${methodnames_for_smaller_multi_paper[@]}")
    #methodnames_for_smaller_multi_paper+=("multithresh_saliency_game_typeboth")
    #methodnames_for_smaller_multi_paper+=("multithresh_saliency_window_size5_game_typeboth")
    summarize_all_deletion_small
}
function summarize_all_deletion_road_resnet8relu(){
    local imputation="road"
    local methodnames_for_smaller_multi_paper=("${methodnames_for_smaller_multi_paper[@]}")
    methodnames_for_smaller_multi_paper+=("multithresh_saliency_game_typeboth")
   #methodnames_for_smaller_multi_paper+=("multithresh_saliency_window_size5_game_typeboth")
    local archs=("resnet8_relu")
    summarize_all_deletion_small
}
function summarize_all_deletion_small(){
    if [ -v imputation ]; then
        :
    else
        local imputation="blur"
    fi
    if [ -v datasets ];then
        :
    else
        local datasets=("cifar-10" "cifar-100" "mnist")
    fi
    if [ -v DATASET ]; then
       local datasets=("$DATASET")
    fi
    #local methods=("integrated_gradients" "grad_cam" "guided_backprop" "gradient")
    if [ -v methods ]; then
        :
    else
        local methods=("${methodnames_for_smaller_multi_paper[@]}")
        if [ "$imputation" == "blur" ]; then 
            methods+=("multithresh_saliency_game_typeboth")
            methods+=("multithresh_saliency_window_size5_game_typeboth")
        fi
    fi
    if [ -v METHOD ]; then
       local methods=("$METHOD")
    fi
    if [ -v archs ]; then
        :
    else
        #local archs=("resnet8" "vgg16")
        local archs=("${archs_for_smaller_multi_paper[@]}")
    fi
    if [ -v ARCH ]; then
       local archs=("$ARCH")
    fi
    echo "${datasets[@]}"
    echo "${methods[@]}"
    echo "${archs[@]}"
    local dataset
    local method
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
                local PYTHON
                #PYTHON="python -m ipdb -c c"
                PYTHON="python"
                local cmd="$PYTHON /root/evaluate-saliency-4/elp_with_scales/torchray/helpers/summarize_deletion.py  --method ${method} --arch ${arch} --dataset ${dataset} --imputation ${imputation}"
                echo "$cmd"
                eval "$cmd"
                #return 0
            done
        done
    done
}
function summarize_all_deletion_large(){
    local datasets=("imagenet-5000")
    local archs=("resnet8" "vgg16")
    local methods=("${methodnames_for_imagenet_multi_paper[@]}")
    local methods2=()
    for method in "${methods[@]}";do
        if [ "$method" == "scorecam" ];then
           :
        else
            methods2+=("$method")
        fi
    done
    methods=("${methods2[@]}")
    summarize_all_deletion_small

}
function remember(){
    set -x
    local cmd="$*"
    if [ "$cmd" == '-l' ] || [  "$cmd" == '--last' ];then
        local lastcmd="`history | tail -n 2 | head -n 1`"
        echo "$lastcmd" >> /root/myhistory/history_
    elif [ "${cmd:0:2}" == '-m' ] ; then
        echo "-m"
        echo "$cmd"
        local lastcmd="${cmd:3}"
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
    local curdir=`pwd`
    cdelp
    if [ -v method ] && [ -v arch ]  && [ -v dataset ];then
        :
    else
        echo "variables not set"
        return 1
        fi
    local cmd="python torchray/helpers/summarize_deletion.py --method $method --arch $arch --dataset $dataset"
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
    local methods=("integrated_gradients" "gradient" "grad_cam")
    local datasets=("cifar-10" "cifar-100" "mnist")
    for method in "${methods[@]}"; do
        for dataset in "${datasets[@]}"; do
            local cmd="method=$method arch=$arch dataset=$dataset summarizedeletion"
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
    if [ -v imputation ]; then
        :
    else
        local imputation=blur
    fi
    cdelp
    local PYTHON
    PYTHON="python -m ipdb -c c"
    PYTHON="python"
    local cmd="$PYTHON  torchray/helpers/plot_deletion.py --arch $arch --dataset $dataset --imputation $imputation --methodnames ${methodnames_for_smaller_multi_paper[@]}"
    echo "$cmd"
    eval "$cmd"
}
function plotallroaddeletionforpaper() {
    local imputation=road
    #local archs=("resnet8_relu" "vgg16")
    local archs=("resnet8_relu")
    local methodnames_for_smaller_multi_paper_=("${methodnames_for_smaller_multi_paper[@]}")
    local methodnames_for_smaller_multi_paper=()
    for method in "${methodnames_for_smaller_multi_paper_[@]}"; do
        #if [ $method != "multithresh_saliency" ] && [ $method != "gradient" ]; then
        if [ $method != "multithresh_saliency" ]; then
            methodnames_for_smaller_multi_paper+=("$method")
        fi
    done
    #methodnames_for_smaller_multi_paper+=("multithresh_saliency_game_typeboth")
    #methodnames_for_smaller_multi_paper+=("multithresh_saliency_window_size5_game_typeboth")
    plotalldeletion
}

function plotallroaddeletion() {
    local imputation=road
    local methodnames_for_smaller_multi_paper=("${methodnames_for_smaller_multi_paper[@]}")
    methodnames_for_smaller_multi_paper+=("multithresh_saliency_game_typeboth")
    methodnames_for_smaller_multi_paper+=("multithresh_saliency_window_size5_game_typeboth")

    plotalldeletion
}
function plotalldeletion() {
    if [ -v archs ]; then
        :
    else
        local archs=("vgg16" "resnet8")
    fi
    #local archs=("resnet8")
    local datasets=("cifar-10" "cifar-100" "mnist")
    if [ -v imputation ]; then
        :
    else
        local imputation=blur
    fi
    local arch
    local dataset
    for arch in "${archs[@]}";do
        echo $arch
        for dataset in "${datasets[@]}";do
           echo $dataset
           local cmd=" dataset=$dataset arch=$arch plotdeletion"
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
# guided vgg16
old_methodnames_for_smaller_multi_paper=("gradient" "guided_backprop" "grad_cam" "integrated_gradients" "multithresh_saliency")
methodnames_for_smaller_multi_paper=("gradient" "guided_backprop" "grad_cam" "integrated_gradients" "multithresh_saliency_game_typeboth")
multimethods_for_smaller_multi_paper=("multithresh_saliency" "multithresh_saliency_game_typeboth" "multithresh_saliency_window_size5_game_typeboth")

archs_for_imagenet_multi_paper=("vgg16" "resnet50")
old_archs_for_smaller_multi_paper=("vgg16" "resnet8")
archs_for_smaller_multi_paper=("resnet8_relu" "vgg16")
smaller_datasets_for_multi_paper=("cifar-10" "cifar-100" "mnist")
function getmethodnamesmultipaper(){
    echo "methods for imagenet ${methodnames_for_imagenet_multi_paper[@]}"
    echo "archs for imagenet ${archs_for_imagenet_multi_paper[@]}"
    echo "methods for smaller ${methodnames_for_smaller_multi_paper[@]}"
    echo "archs for smaller ${archs_for_smaller_multi_paper[@]}"
}
function check_ndone_imagenet_multi(){
    local methodnames=("${methodnames_for_imagenet_multi_paper[@]}")
    local archs=("${archs_for_imagenet_multi_paper[@]}")
    local dataset="imagenet-5000"
    for arch in "${archs[@]}";do
        for method in "${methodnames[@]}"; do
            #echo $method $arch
            check_ndone $method $arch $dataset
            done
    done
}
#METHODNAME=multithresh_saliency check_ndone_smaller_multi
function check_ndone_smaller_multi(){
    local datasets=("${smaller_datasets_for_multi_paper[@]}")
    if [ -v DATASET ]; then
        datasets=("$DATASET")
    fi
    local methodnames=("${methodnames_for_smaller_multi_paper[@]}")
    if [ -v METHODNAME ]; then
        methodnames=("$METHODNAME")
    fi
    local archs=("${archs_for_smaller_multi_paper[@]}")
    if [ -v ARCH ]; then
        archs=("$ARCH")
    fi
    local arch
    local dataset
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
    local cmd="python -m ipdb -c c $ELP/scripts/collect_deletion.py --arch $arch --dataset $dataset"
    echo $cmd
    eval "$cmd"

}
function runsummarizecollectdeletion(){
summarize_all_deletion
collectdeletion
}
alias workoncollectdeletion="vim  -O $ELP/scripts/collect_deletion.py -O /root/evaluate-saliency-4/elp_with_scales/torchray/helpers/plot_deletion.py;collectdeletion"
function addtodo2(){
    local msg="$*"
    #local now=`TZ=Asia/Kolkata date`
    #local month=`echo "$now" | cut -d " " -f 2`
    #local day=`echo "$now" | cut -d " " -f 4`
    #local time=`echo "$now" | cut -d " " -f 5`
    #local year=`echo "$now" | cut -d " " -f 7`
    #local timestamp="${day} ${month} ${year} ${time}"
    ##msg=$(echo -e "$msg" | sed 's/\\\*/\\\\\\\\*\\\/g;s/!/\\\\!/g')
    ##msg=$(echo -e "$msg" | sed "s/\'/\\\'/g" )
    #msg="${timestamp} ${msg}"
#======================================================
#, tzinfo=timezone(timedelta(hours=-2))
    local now=`python -c "import pytz;import datetime;kolkata_tz=pytz.timezone('Asia/Kolkata');tstr=datetime.datetime.now(kolkata_tz).strftime('%d %b %Y %H:%M:%S');print(tstr)"`
    local month=`echo "$now" | cut -d " " -f 2`
    local day=`echo "$now" | cut -d " " -f 1`
    local time=`echo "$now" | cut -d " " -f 4`
    local year=`echo "$now" | cut -d " " -f 3`
    local timestamp="${day} ${month} ${year} ${time}"
    msg="${timestamp} ${msg}"
#======================================================
    if [ -v addat ]; then
        :
    else
        local addat="1"
    fi
    if [ -v todofname ];then
        :
    else
        local todofname="/root/todo2/todo2.dr"
    fi
    if [ -v prefix ];then
        :
    else
        local prefix="-"
    fi
    local payload="${addat}s"
    local payload+="/^/"
    payload+="${prefix}${msg}"
    payload+="\\n/"
    #local fname="/root/todo2/todo2_bkup"
    #echo $payload
    #payload=$(printf '%q' "${payload}")
    #sed -i ${payload} $todofname
    cmd="sed -i '${payload}' $todofname"
    eval $cmd
    clear2

}
function addhelp(){
    local args="$*"
    local todofname="/root/myhelp/help.md"
    local prefix='#'
    local addat="\$"
    addtodo2 $args 
}
function setup_smaller_vgg16(){
cdrunjson 
#cp run_imagenet_vgg16.json run_multi_cifar10_vgg16.json &&\ 
vim run_multi_cifar10_vgg16.json 
genrunscript run_multi_cifar10_vgg16.json
#cp run_multi_cifar10_vgg16.json run_multi_cifar100_vgg16.json &&\ 
vim run_multi_cifar100_vgg16.json 
genrunscript run_multi_cifar100_vgg16.json 
#cp run_multi_cifar10_vgg16.json run_multi_mnist_vgg16.json &&\ 
vim run_multi_mnist_vgg16.json 
genrunscript run_multi_mnist_vgg16.json

}
alias run_smaller_vgg16="runtorchray run_vast_multi_cifar-10_vgg16.sh && runtorchray run_vast_multi_cifar-100_vgg16.sh && runtorchray run_vast_multi_mnist_vgg16.sh"
alias workonsmallerfilelist="vim -O /root/evaluate-saliency-4/elp_with_scales/torchray/helpers/summary2.py"
function createsmallerfileorder() {
    local arch="resnet8"
    local method="grad_cam"
    local datasets=("${smaller_datasets_for_multi_paper[@]}")
    for dataset in "${datasets[@]}"; do
        python /root/evaluate-saliency-4/elp_with_scales/torchray/helpers/summary2.py --create_file_order true --arch $arch --dataset $dataset --method $method
    done
}
#alias workondataloader="vim -O /tmp/dataclient.py -O /tmp/dataserver.py && tmux kill-session -t 't-dl' ; tmux new -session -d -s 't-dl' 'cd /tmp; uvicorn dataserver:app --reload --host 0.0.0.0 --port 14000;bash' && tmux a -t 't-dl' && cd /tmp && python dataclient.py && cd -"
#"""
#    dataset = 'cifar-10'
#    method = 'multithresh_saliency'
#    arch = 'vgg16'
#    port = 14000
#    runsmaler vgg16 cifar-10 multithresh_saliency
#"""
alias workondataloaderlocal="vim -O $ELP/torchray/helpers/dataclient.py -O /root/evaluate-saliency-4/elp_with_scales/examples/attribution_benchmark.py -O /root/evaluate-saliency-4/elp_with_scales/examples/attribution_benchmark.py && set-title elp && DBG_LANDATALOADER=1 DRY_RUN=false CONTINUE=false runsmaller vgg16 cifar-10 multithresh_saliency"
alias vimdataloaderserver="vim -O $ELP/torchray/helpers/dataclient.py -O $ELP/torchray/helpers/dataserver.py -O /root/evaluate-saliency-4/elp_with_scales/examples/attribution_benchmark.py"
alias vimdataloaderserver="vim -O $ELP/torchray/helpers/dataclient.py -O $ELP/torchray/helpers/dataserver.py"
alias workondataloaderclient="set-title elp && DBG_LANDATALOADER=1 DRY_RUN=false CONTINUE=false runsmaller vgg16 cifar-10 multithresh_saliency"
alias ssh113="ssh vast-113"
alias check_ndone_smaller_vgg16="ARCH=vgg16 METHODNAME=multithresh_saliency check_ndone_smaller_multi" 
alias vimcollectdeletion="vim $ELP/scripts/collect_deletion.py"
TORCHRAYMETRICS="/root/bigfiles/other/metrics-torchray"
TORCHRAYRESULTS="/root/bigfiles/other/results-torchray"
export TORCHRAYRESULTS2="/root/bigfiles/other/results-torchray2"
TORCHRAYMETRICS2="/root/bigfiles/other/metrics-torchray2"
VOCIMAGESDIR="/root/bigfiles/dataset/voc/VOCdevkit/VOCdevkit/VOC2007/JPEGImages"
IMAGENETIMAGESDIR="/root/bigfiles/dataset/imagenet/images/val"
DATASETDIR="/root/bigfiles/dataset/"
VOCANNOTATIONSDIR="/root/evaluate-saliency-4/elp_with_scales/data/datasets/voc/VOCdevkit/VOC2007/Annotations/"
workonvalidatevgg16(){
    echo """
. open the cdcifarvgg main.py file
. copy the entire code to validation.py file
. add the methodname etc to the validation file
. remove the training stp, train_loader etc part of the code
. use as many functions from main.py as possible
"""
    cdcifarvgg
    trap "cd -" EXIT
    trap "cd -" ERR
    vim -O main.py -O validation.py
    local results_file=$TORCHRAYMETRICS/vgg16_performance
    echo "" > $results_file
    local datasets=("cifar-10" "cifar-100" "mnist")
    local dataset
    for dataset in "${datasets[@]}";do
        echo "$dataset" >> $results_file
        python   main.py --evaluate --dataset $dataset --arch vgg16 >> $results_file
    done

}
function workonvalidateresnet8(){
    echo """
. open the cdcifarvgg main.py file
. copy the entire code to validation.py file
. add the methodname etc to the validation file
. remove the training stp, train_loader etc part of the code
. use as many functions from main.py as possible
"""
    cdcifar
    #set -x
    trap "set +x;cd -" EXIT
    trap "set +x;cd -" ERR
    ls
    #vim -O main.py -O validation.py
    vim train.py
    local results_file=$TORCHRAYMETRICS/resnet8_performance
    echo "" > $results_file
    local datasets=("cifar-10" "cifar-100" "mnist")
    local dataset
    for dataset in "${datasets[@]}";do
        echo "$dataset" >> $results_file
        #python   train.py --evaluate --dataset $dataset --arch vgg16 >> $results_file
        python train.py --dataset ${dataset} --evaluate true --use_tta false >> $results_file
        echo "$dataset"
    echo ${results_file}
    done
}
#workondeletionroadvgg16(){
#    local archs=("vgg16")
#    workondeletionroad8relu
#}
#function workondeletionroad8relu(){
#    local imputation="road"
#    #local methods=("${methodnames_for_smaller_multi_paper[@]}")
#    local methods=("grad_cam" "gradient" "guided_backprop" "integrated_gradients" "multithresh_saliency_game_typeboth")
#    #local dummyflag
#    #read -p "ignoring gradcam, CONTINUE?" dummyflag
#    #local methods=("gradient" "guided_backprop" "integrated_gradients" "multithresh_saliency_game_typeboth")
#    #local methods=("multithresh_saliency_game_typeboth")
#    if [ -v archs ]; then
#        :
#    else
#        local archs=("resnet8_relu")
#    fi
#    #local datasets=("cifar-10" "cifar-100")
#    #local datasets=("mnist")
#    local docollect=false
#    workondeletionsmalldataset
#
#}
#function workongradcamdeletionroad8relu(){
#    local imputation="road"
#    #local methods=("${methodnames_for_smaller_multi_paper[@]}")
#    local methods=("grad_cam")
#    #local methods=("multithresh_saliency_game_typeboth")
#    local archs=("resnet8_relu")
#    #local datasets=("cifar-10" "cifar-100")
#    #local datasets=("mnist")
#    local docollect=false
#    workondeletionsmalldataset
#
#}


#function workondeletionmultiroad(){
#    local imputation="road"
#    local methods=("${multimethods_for_smaller_multi_paper[@]}")
#    local docollect=false
#    workondeletionsmalldataset
#
#}

function workondeletionsmalldatasetroadmultiablation() {
    local imputation="road"
    local methods=("multithresh_saliency" "multithresh_saliency_game_typedeletion") 
    #local methods=("multithresh_saliency_game_typedeletion") 
    local docollect=true
    workondeletionsmalldataset
}


function workondeletionsmalldatasetroad() {
    local imputation="road"
    local docollect=false
    workondeletionsmalldataset
}

function workondeletionsmalldataset(){
    local max_blur=7
    if [ -v archs ]; then
        :
    else
        local archs=("${archs_for_smaller_multi_paper[@]}")
    fi
    if [ -v methods ];then
        :
    else
        local methods=("${methodnames_for_smaller_multi_paper[@]}")
        methods+=("multithresh_saliency_game_typeboth")
        methods+=("multithresh_saliency_window_size5_game_typeboth")
    fi
    if [ -v datasets ]; then
        :
    else
        local datasets=("${smaller_datasets_for_multi_paper[@]}")
    fi
    if [ -v imputation ]; then
        :
    else
        local imputation="blur"
    fi
    echo "${methods[@]}"
    echo "${archs[@]}"
    local dataset
    for dataset in "${datasets[@]}"; do
        echo $dataset $imputation
        workondeletionlargedataset
        #dataset=dataset workondeletionlargedataset
    done
    }
function workondeletionlargedataset(){
echo """
. use scratchpy
. get the path for 1 saved result: /root/bigfiles/other/results-torchray/imagenet-5000-grad_cam-resnet50/ILSVRC2012_val_00000100/bighorn349.xz
. get the path for 1 saved result for a smaller model: /root/bigfiles/other/results-torchray/mnist-grad_cam-resnet8/0/77.xz
. load the result
. run_deletion file?
. modify the loaded result to save the deletion game results
. ensure the result for larger dataset is similar to that of smaller model
"""
#scratchpy
#vim -O /tmp/dummy.py -O $ELP/torchray/benchmark/deletion_game.py
#python /tmp/dummy.py

#vim /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/deletion.py
cdcam
trap "cd -" EXIT
trap "cd -" ERR
if [ -v docollect ];then
    :
else
    local docollect=true
    fi
if [ -v dataset ]; then
    :
else
    local dataset="imagenet-5000"
fi

if [ -v methods ]; then
    :
else
    local methods=("${methodnames_for_imagenet_multi_paper[@]}")
fi
if [ -v archs ]; then
    :
else
    #archs=("${archs_for_imagenet_multi_paper[@]}")
    local archs=("vgg16")
fi
if [ -v max_blur ]; then
    :
else
    local max_blur=20
fi
# if bash variable imputation is not set, set it to blur
if [ -v imputation ]; then
    :
else
    local imputation="blur"
fi
echo "${methods[@]}"
echo "${archs[@]}"
local method
local arch
for method in "${methods[@]}";do
    for arch in "${archs[@]}";do
    #if [ "$method" == "grad_cam" ] && [ "$dataset" == "imagenet-5000" ]; then
    #    :
    #else
    #    echo "CONTINUING non gradcam"
    #   continue

    #fi
    #==============================================================================================================================
    #PYTHON="python -m ipdb -c c"
    local PYTHON="python"
    local cmd="$PYTHON  deletion.py --method $method --arch $arch --dataset $dataset --ratios 0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 --max_blur $max_blur --imputation $imputation"
    echo $cmd
    if [ "$method" == "scorecam" ] && [ "$arch" == "vgg16" ] && [ "$dataset" == "imagenet-5000" ]; then
        :
    else
        echo "$cmd"
        eval "$cmd"
    fi
    #==============================================================================================================================
    if true; then
        local collectcommand="$PYTHON deletion.py --add-to-results-xz true --method $method --arch $arch --dataset $dataset --imputation $imputation"
        if [ "$method" == "scorecam" ] && [ "$arch" == "vgg16" ] && [ "$dataset" == "imagenet-5000" ]; then
            :
        else
            if $docollect;then
                echo "$collectcommand"
                eval "$collectcommand"
            fi
            
        fi
    else 
        echo "skipping COLLECT"
    fi
    #==============================================================================================================================
        #return 0
done
done

}
alias cdmultipaper="cd /root/evaluate-saliency-4/papers/ICIP-Multithreshold-saliency/"
workonselfsaliency(){
local curdir=`pwd`
trap "cd $curdir" EXIT
trap "cd $curdir" ERR
cdmulti
#vim -O run_multithresh_saliency.py -O multithresh_saliency_.py -O run_self_saliency.py
vim -O run_multithresh_saliency.py -O wrapper_for_torchray.py -O run_self_saliency.py
python -m ipdb -c c run_multithresh_saliency.py
}
alias vimrunmulti="vim /root/evaluate-saliency-4/multithresh-saliency/multithresh_saliency/run_multithresh_saliency.py"
alias tmanew="tma t-smaller-new && tma t-smaller-new2 && tma t-smaller-new3 && tma t-smaller-new4"
function mvoldguided_backprop(){
    echo "feb"
    echo "moving to bkup, _feb7, because doesnt have saliency saved, and cant do deletion game"
    #cdresults
    #mkdir -p bkup
    #mv cifar-10-guided_backprop-resnet8 bkup/cifar-10-guided_backprop-resnet8_bkup
    #cdresults2
    #mv cifar-10-guided_backprop-resnet8 ../results-torchray/cifar-10-guided_backprop-resnet8
}
function workonvisuallycompareformulti(){
echo "hi"
local model=vgg16
local dataset="imagenet-5000"
local anchor_method="multithresh_saliency"
local desc="where_multi_beter"
#createimrootsforvisualize
local bestfile=where_multi_beter_anchor_multithresh_saliency_arch_${model}_imroots_and_class_ids
local methodnames=("${methodnames_for_imagenet_multi_paper[@]}")
methodnames+=("multithresh_saliency_game_typeboth")
local archs=("${archs_for_imagenet_multi_paper[@]}")
collectimagesforpaper 
}
function createimrootsforvisualize(){
    local metricsdir="/root/bigfiles/other/metrics-torchray"
    local resultsdir="/root/bigfiles/other/results-torchray"
    if ! [[ -v model ]]; then
    local model=vgg16
    fi

    if ! [[ -v dataset ]]; then
    local dataset="imagenet-5000"
    fi

    #if ! [[ -v model]]; then
    #fi
    local anchor_method="multithresh_saliency"
    cd $metricsdir
    #/root/bigfiles/other/metrics-torchray/where_elp_gp_beter_anchor_extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1_arch_${arch}_imroots_and_class_ids
    cp where_elp_gp_beter_anchor_extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1_arch_${model}_imroots_and_class_ids where_multi_beter_anchor_multithresh_saliency_arch_${model}_imroots_and_class_ids
    ls $resultsdir/${dataset}-${anchor_method}-$model/*/*.xz > /tmp/flist_feb7
    local outfile=/tmp/new_where_multi_beter
    #echo > $outfile
    if [ -f $outfile ]; then
        rm $outfile
    fi
    touch $outfile
    while IFS= read -r s0; do
        #local s0="/root/bigfiles/other/results-torchray/imagenet-5000-multithresh_saliency-vgg16/ILSVRC2012_val_00000100/bighorn349.xz"
        local bname="`basename $s0`"
        local dname="`dirname $s0`"
        local imroot="`basename $dname`"
        local classid=`echo "$bname" | sed 's/[^0-9]*//g'`
        #echo $bname $imroot $classid
        echo "$imroot $classid" >> $outfile
        #break
    done < /tmp/flist_feb7
    local targetfile="$metricsdir/where_multi_beter_anchor_multithresh_saliency_arch_${model}_imroots_and_class_ids"
    cp $outfile $targetfile 
    echo $targetfile
    cd -
}
alias watchdataserver="watch -n 2 'tail -n 20 /tmp/dataserver.txt'"
renamemultiwithgame(){
    cdresults
    local dataset
    local arch
    for arch in "${archs_for_smaller_multi_paper[@]}"; do
    for dataset in "${smaller_datasets_for_multi_paper[@]}"; do
        echo "$dataset"
        local dirs=`ls -d $dataset-multi*-${arch}/`
        local d
        for d in ${dirs[@]}; do
            echo $d
            #d=`sed 's/\(.*\)[/]'`
            d=`basename $d`
            local methodname
            local findpattern=${dataset}
            findpattern+='-\(.*\)-'
            findpattern+=$arch
            local sedcommand='s/'
            sedcommand+=${findpattern}
            sedcommand+='/\1/g'
            echo $sedcommand
            echo $d
            #$(sed ${sedcommand} <<< "$d")
            local methodname=$(sed ${sedcommand} <<< "$d")
            echo "methodname $methodname"
            local stub
            stub=`sed 's/multithresh_saliency_\(.*\)/\1/g' <<< ${methodname}`
            echo $stub
            local newmethodname
            newmethodname=multithresh_saliency_${stub}_game_typeboth
            echo $newmethodname
            local newd
            newd=${dataset}-${newmethodname}-${arch}
            echo $newd
            local mvcmd="mv $d $newd"
            echo "$mvcmd"
            eval "$mvcmd"


        done
    done
done
}
alias vimmultidiary="vim $papersdir/ICIP-Multithreshold-saliency/diary/feb8"
alias icipinfo="""echo '''
1737 92BA9AEB
Immediately Reject on Regular & Special Session Paper Notification  March 1, 2024
Paper Acceptance Notification (including workshops)     June 6, 2024
Author Registration Deadline (including workshops)  July 11, 2024
'''
"""
#alias ppt="echo 'Z3432452'"
#alias pptdate="echo 'issue:16/10/2015 expiry:15/10/2025'"
alias pptinfo="echo 'Z3432452 issue:16/10/2015 expiry:15/10/2025'"
alias icasspinfo="echo '4010 98157EDE'"
alias fakeicipdetails="echo '2785 E4DC0B61'"
866 1129
alias vimerc="vimtodo erc"
function vimwhy(){
local fname="$1"
vimtodo ${fname}.dr
}
alias workoncreatedeletiontable="cdmetrics && vim create_deletion_table.py && pythond create_deletion_table.py"
alias evall="eval "
alias lsd="ls -d "
function httppath(){
    local fpath="$1"
    fpath="`realpath ${fpath}`"
    #"/root/folder1/folder2/file/"
    #"/folder1/fodler2/file/"
    local stub=`sed 's/\/root//g' <<< "${fpath}"`
    local url="localhost:10000${stub}"
    echo $url

}

alias vimresearch="vimtodo research"
alias fastapiaudiorecordertoken="echo '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'"
alias eccvinfo="""echo '''
Abstract registration deadline  Feb 29 24 10:00 PM CET *    02 weeks 03 days 04:56:42
Submission Deadline     Mar 07 24 10:00 PM CET *    03 weeks 03 days 04:56:42
Supplementary materials deadline    Mar 14 24 09:00 PM CET *    04 weeks 03 days 03:56:42
2129
'''"""
codedir="/root/evaluate-saliency-4"
papersdir="$codedir/papers"
thesisdir="$papersdir/Thesis_proposal"
eccvdir="$papersdir/ECCV_multithreshold_saliency"
alias cdthesis="cd $thesisdir"
alias cdpapers="cd $papersdir"
tikzdir="$papersdir/practice-tikz"
alias cdtikz="cd $tikzdir"
alias cdeccv="cd $eccvdir"
alias workoneccv="vim -O /root/evaluate-saliency-4/papers/ECCV_multithreshold_saliency/eccv2016submission.tex -O /root/evaluate-saliency-4/papers/ECCV_multithreshold_saliency/paper.tex"
alias vimmultilosses="vim /root/evaluate-saliency-4/multithresh-saliency/multithresh_saliency/losses.py"
alias vimmultisaver="vim /root/evaluate-saliency-4/multithresh-saliency/multithresh_saliency/saver.py"
function workoncompile(){
#vimattribution
cdelp
vim /root/evaluate-saliency-4/elp_with_scales/torchray/helpers/dataserver.py
vim -O /root/evaluate-saliency-4/elp_with_scales/examples/attribution_benchmark.py -O /root/evaluate-saliency-4/elp_with_scales/torchray/attribution/grad_cam.py -O /root/evaluate-saliency-4/elp_with_scales/torchray/attribution/common.py
python -m ipdb -c c examples/attribution_benchmark.py --method grad_cam --start 0 --end 5000  --arch vgg16 --dataset voc_2007 --use_compiled_model true
}
alias cdcodingpractice="cd /root/evaluate-saliency-4/coding-practice"
alias loadvgg16="python /root/evaluate-saliency-4/dutils/dutils/load_vgg16.py"
function workondropout(){
cdmulti
#vim -O run_dropout_saliency.py -O multithresh_saliency_.py
vim -O run_dropout_saliency.py
pythond run_dropout_saliency.py
cd -
}
function findq(){
local curdir=`pwd`
local dirname="${1:-$curdir}"
find . -type f -name "*.js" -print0 | xargs -0 grep -n "//?"
find . -type f -name "*.py" -print0 | xargs -0 grep -n "#?"
find . -type f -name "*.json1" -print0 | xargs -0 grep -n "#?"
find . -type f -name "*.html" -print0 | xargs -0 grep -n "<!--?"
find . -type f -name "*.html" -print0 | xargs -0 grep -n "//?"
}
# we need to use the function read_torchray_result from the python library dutils 
# you will cll the bash function as "readpkl 1000.xz"
function comparegradientguided(){
cdresults
impath="0/cat3.xz"
readpkl cifar-10-guided_backprop-resnet8/${impath} guided.png
readpkl cifar-10-gradient-resnet8/${impath} gradient.png
cd -
}
function readpkl(){
local fname="$1"
local savename=${2:-"saliency.png"}
python -c """
from dutils import read_torchray_result;
read_torchray_result('$fname','$savename')
"""
}
alias pythonc="python -c"
function workonelpselfsaliency(){
curdir=`pwd`
cdattribution
vim -O $MULTI/run_self_saliency.py -O extremal_perturbation_for_self_saliency.py
cdmulti
python run_self_saliency.py
cd $curdir
}
alias vimdrsyntax="vim  ~/.vim/syntax/dr.vim"
function workonvim(){
vim -O ~/.vim/ftdetect/dr.vim  ~/.vim/syntax/dr.vim 
vim --startuptime /root/vimstartup.log ~/todo/trydr.dr
vim /root/vimstartup.log
}
alias vimcolors="vim /root/myhelp/vimcolors"
alias vimtodocommands="vim /root/todo2/todocommands.sh"
source /root/todo2/todocommands.sh
alias cdaudiorecorder="cd /root/evaluate-saliency-4/coding-practice/record_audio"
facealignment="/root/evaluate-saliency-4/face-alignment"
alias cdfacealignment="cd ${facealignment}"
function diagnosegradientguided(){
#cdresults
#impath="0/cat3.xz"
#readpkl cifar-10-guided_backprop-resnet8/${impath} guided.png
#readpkl cifar-10-gradient-resnet8/${impath} gradient.png
#cd -
local dataset="cifar-10"
local methods=("guided_backprop" "gradient")
local method
for method in ${methods[@]}; do 
    DBG_VISUALIZE=1 pythond examples/attribution_benchmark.py --method $method --start 0 --end 1 --arch resnet8 --dataset $dataset --save_detailed_results false --metrics deletion_game --use_landataloader false
done
}
alias sshh="ssh "
function tmaall8rel(){
local instances=("vast-112d" "vast-113" "vast-114")
tma t-resnet8
tma t-resnet8-2
local instance
for instance in "${instances[@]}"; do
    sshh $instance -t "source /root/.bashrc;tmux a -t t-resnet8; tmux a -t t-resnet8-2"
done

}
createdeletiontable="/root/bigfiles/other/metrics-torchray/create_deletion_table.py"
alias runcreatedeletiontable="python $createdeletiontable"
#sysctl fs.inotify.max_user_watches=524288

alias cdcontrolnetmodels="cd /root/evaluate-saliency-4/coding-practice/stable-diffusion-webui/extensions/sd-webui-controlnet/models"
alias cdfontstyle="cd /root/evaluate-saliency-4/coding-practice/font-style-transfer"
alias vimsdenv="vim /root/evaluate-saliency-4/coding-practice/stable-diffusion-webui/venv/bin/activate"
alias startsdenv="source /root/evaluate-saliency-4/coding-practice/stable-diffusion-webui/venv/bin/activate"
alias rclonefontimages="rclone copy aniketsinghresearch-gdrive:misc-tasks/ misc-tasks"
alias getsammodel="wget https://dl.fbaipublicfiles.com/segment_anything/sam_vit_h_4b8939.pth"
samdir="/root/evaluate-saliency-4/coding-practice/font-style-transfer/segment-anything"
alias cdsam="cd $samdir"
alias vibesbbx="echo [[6.0, 1.0], [117.0, 5.0], [116.0, 48.0], [4.0, 46.0]]"
function rcloneget(){
    local src="$1"
    local tgt="$2"
    rclone copy -P aniketsinghresearch-gdrive:${src} ${tgt}
    }
alias vimgpnn="vim /root/evaluate-saliency-4/coding-practice/font-style-transfer/GPNN/model/gpnn.py"
workonwindowsizeforvgg16(){
    cdresults
 vim visually_check_windowsize_for_vgg16.py && python visually_check_windowsize_for_vgg16.py 
 cd -
    }
workondebuggradcamdeletion()
{
    cdmetrics
    vim debug_gradcam_deletion_issue.py && python debug_gradcam_deletion_issue.py
    cd -
}
alias vimcreatetable="vim /root/bigfiles/other/metrics-torchray/create_deletion_table.py"
function createtable(){
    cdmetrics
    python  /root/bigfiles/other/metrics-torchray/create_deletion_table.py
    cd -
}

function createtablemultiablation(){
    cdmetrics
    python  /root/bigfiles/other/metrics-torchray/create_deletion_table.py --methods multithresh_saliency multithresh_saliency_game_typedeletion multithresh_saliency_game_typeboth
    cd -
}

startdataserver(){
    cd /root/evaluate-saliency-4/elp_with_scales/torchray/helpers
    uvicorn dataserver:app --host 0.0.0.0 --reload --port 14000
}
alias lsl="ls -l "
addsaifkey(){
#echo """
#ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDaFM3oxWUDeSo81Ge4XtwfshEQGXvIZu1CTLo2TYxid4bJiHx8Purgq/q+U1PFq4U+52IupZDKYni/gzNzg4eLapt0Wa++vK/OBVkBZl5fFfr0O4fKvSaMb1c8EXgEB6uPfxJfQxZ/mSFoOGwTF3t20BFiH6arXOYp5T8FKR7fyctWgsPOwe3KJE1Dmn/Sunfv4WF75SqEQEi9G2jxxUyVq6xQHehG7p8i1nAZ6okCMFg93Fjeu2Kq5jWV2AnYZZ8/KHV48N0iMEuIO3XbQb/aSBuF1+aZRgMJm+3vCZb5Rv+IB2yfap0yiADeXbVWcODIOzNyN5hg0NIqZ45AXCjv user@user-HP-Laptop-15-bs1xx
#"""
echo """
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCek+TOV7twqTVKsizdCWiVmkF9xsvXPyTHpvHJ40HDdh5ch0+jNvVcHa1Q2TxjpRi1pADmw9hQZinLfzyOFd3h7pfPEGi98GbPQQl77oZ/ZsnctjhgZdhh0C9VuMRXgBRsI4OMELkM38bEKFfJQoe16+psxZxM/Yqa5AJ0pk4wfd3ybRdQIBN5tZkg5rDSdiAQzQ2mxDdVXS4ANjaz46Xqq6GD/H85zKGZ83uUJWdsVqcdTEcwRJbMPvwulPsomPGznNYhALY9vAxjHWMoB3GcXseZzJ245BnHVCTQn+6T7RznNG6FGOdvT3LrNdSPn3unBk5mbiLFKv/IHsJmbNi8A0a5sGEi/xKjsN3ngulr4lgw97oJ6AyV5V4Ss+cPUl7NFk1NSe56N0yDixkHVZDXEPHVEwn+5w3s7E5JSDrvkzwOgoiknzcXJ+sS7tFRjBaPfd4fEo4X6ouDmA0vliXy9fE7fyrIC1hqGQ6sxzAu3Y8zB050bbC5isvbnb9v62MZ9Nf+avto59hvE9BLJ+RGXdPf//w9cojkmum36W2G1sIdrKuvz9sDRxzUkPYkZHntq0ax89zDDtLSmCRqX2k4GzApsAS1PVJlQK2C8l2fDtVslgAPekdWbILyoPrOg1/gwzAauhiCyx+oweOWauayPrDCfMWaedY0UB0BmwdYUQ== bagmarusaif@gmail.com
""">> ~/.ssh/authorized_keys
    }
alias adr="echo '605580965950'"
alias koreavisapplication="echo 'MU24ON005546 recept: 240312-13'"
checkndoneimagenet(){
    cdresults
    for d in `lsd *imagenet*`;do echo $d; ls $d | wc -l; done
    cd -
    # TODO
    # IGOSpp
    # extremal_perturbation
    # groupcam
    # rise

}
runlarger(){
    local DRY_RUN=false
    local archs=("${archs_for_imagenet_multi_paper[@]}")
    if [ -v ARCH ]; then
        archs=("$ARCH")
    fi
    local datasets=("imagenet-5000")
    if [ -v DATASET ]; then
        datasets=("$DATASET")
    fi
    #local GAME_TYPE=both
    #local methods=("extremal_perturbation" "IGOSpp" "scorecam" "grad_cam" "groupcam" "rise" "gradient" "guided_backprop")
    if [ -v methods ]; then 
        :
    else
        local methods
        if [ -v METHOD ]; then 
            methods=("${METHOD}")
        else
            methods=("extremal_perturbation" "IGOSpp")
        fi
        #local methods=("rise" "groupcam")
    fi
    local method
    local arch
    local dataset
    for arch in "${archs[@]}"; do
        for dataset in "${datasets[@]}"; do
            for method in "${methods[@]}"; do
                GAME_TYPE=${GAME_TYPE} DEBUG=false runsmaller $arch $dataset $method
                done
        done
    done
    #GAME_TYPE=both runsmaller resnet8_relu cifar-100 multithresh_saliency
    #GAME_TYPE=both runsmaller resnet8_relu mnist multithresh_saliency
    }

workoncomparecompiled(){
    vim /root/bigfiles/other/results-torchray/compare_compiled_non_compiled.py
    python /root/bigfiles/other/results-torchray/compare_compiled_non_compiled.py
}

fixrsyncnewdir(){
    local d=$1
    local basef=`basename $d`
    local parent=`dirname $d`
    if [ -f ${d}/${basef} ]; then
        :
    else
        echo "${d}/${basef} not found"
        return 1
    fi

    local newd=${d}_dir
    mv $d ${newd}
    mv ${newd}/${basef} ${parent} 
    rmdir $newd

}
alias aniketsahanumber="echo '+919674917970'"
icprinstructions(){
    echo """

Springer LNCS format with maximum 15 pages (including references) during paper submission. To take care of reviewers' comments, one more page is allowed (without any charge) during revised/camera ready submission. Moreover, authors may purchase up to 2 extra pages. Extra page charges must be paid at the time of registration.


ICPR-2024 will follow a single-blind review process. Authors can include their names and affiliations in the manuscript.


By the submission deadline, the authors may optionally submit additional material that was ready at the time of paper submission but could not be included due to constraints of format or space. The authors should refer to the contents of the supplementary material appropriately in the paper. Reviewers will be encouraged to look at it, but are not obligated to do so.

Supplementary material may include videos, proofs, additional figures or tables, more detailed analysis of experiments presented in the paper. There is no page limit for the supplementary materials but only one file with maximum file size of 50 MB is allowed for submission.

We encourage (if possible) authors to upload their code as part of their supplementary material in order to help reviewers assess the quality of the work.


Reproducibility: Authors should put every effort possible to make the submission reproducible. We highly encourage authors to voluntarily submit their code as part of supplementary material, especially if they plan to release it upon acceptance. Reviewers may optionally check this code to ensure the paper's results are reproducible and trustworthy, but are not required to. We expect (but do not require) that the accompanying code will be submitted with accepted papers.
"""
}
icprelpdir="/root/evaluate-saliency-4/papers/ICPR_elp_with_scales"
mdpielpdir="/root/evaluate-saliency-4/papers/MDPI_elp_with_scales"
alias cdicprelp="cd $icprelpdir"
alias cdmdpielp="cd $mdpielpdir"
alias vimmdpielp="vim $mdpielpdir/mdpi_elp_with_scales.tex"
latexicprelp(){
    curdir=`pwd`
    cdpapers
    cd ICPR_elp_with_scales
    pdflatex icpr_multiscale_saliency.tex
    bibtex icpr_multiscale_saliency
    pdflatex icpr_multiscale_saliency
    cd $curdir
    }
uploadicprelp(){
    curdir=`pwd`
    cdpapers
    cd ICPR_elp_with_scales
    rclone copy -Pv icpr_multiscale_saliency.pdf aniketsinghresearch-gdrive:my-papers
    cd $curdir
    }
latexmdpielp(){
    curdir=`pwd`
    cdpapers
    cd MDPI_elp_with_scales
    pdflatex mdpi_elp_with_scales.tex
    bibtex mdpi_elp_with_scales
    pdflatex mdpi_elp_with_scales
    cd $curdir
    }

alias vimfood="vimtodo2 food"
alias linkedinnew="echo 'email id : work1.kousik@gmail.com Password : Qwerty@332211'"
runelp(){
#!/bin/bash
#donedir="/root/evaluate-saliency-4/elp_with_scales/scripts/done_filelists"
#tmux kill-session -t t-imagenet_vgg16
if [ -v METHOD ];then
    :
else
    local METHOD="extremal_perturbation"
fi

if [ -v ARCH ];then
    :
else
    local ARCH="resnet50"
fi

if [ -v DATASET ];then
    :
else
    local DATASET="voc_2007"
fi

if [ -v SEED ];then
    :
else
    local SEED=0
fi

if [ -v RNG ];then
    local RNG_ARG="--rng $RNG"
else
    local RNG_ARG=""
fi

cdelp
DBG_ELP_SEED_MAR21=${DBG_ELP_SEED_MAR21:-0} pythond examples/attribution_benchmark.py --method $METHOD --dataset $DATASET --arch $ARCH --save_detailed_results True --seed $SEED ${RNG_ARG}
}
alias runelpresnet50seed1="SEED=1 runelp"
alias runelpresnet50seed2="SEED=2 runelp"
alias runelpvgg16seed1="ARCH=vgg16 SEED=1 runelp"
alias runelpvgg16seed2="ARCH=vgg16 SEED=2 runelp"

alias runelpcropswresnet50rng0="DBG_ELP_SEED_MAR21=1 RNG=0 METHOD=extremal_perturbation_with_simple_scale_and_crop_normalized runelp"
alias runelpcropswresnet50rng2="DBG_ELP_SEED_MAR21=1 RNG=2 METHOD=extremal_perturbation_with_simple_scale_and_crop_normalized runelp"
alias runelpcropswvgg16rng0="DBG_ELP_SEED_MAR21=1 ARCH=vgg16 METHOD=extremal_perturbation_with_simple_scale_and_crop_normalized RNG=0 runelp"
alias runelpcropswvgg16rng2="DBG_ELP_SEED_MAR21=1 ARCH=vgg16 METHOD=extremal_perturbation_with_simple_scale_and_crop_normalized RNG=2 runelp"

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
    #set -x
    local fnames=${*:-("bestfile" "failurefile" "betterthancropfile")}
    local curdir=`pwd`
    cdelp
    if ! [[ -v dataset ]]; then
        local dataset="voc_2007"
    fi
    if ! [[ -v archs ]]; then 
        local archs=("resnet50" "vgg16")
    fi
    #-----------------------------------------------------
    if ! [[ -v desc ]]; then
        local desc=where_elp_gp_beter
    fi
    if ! [[ -v anchor_method ]]; then 
        local anchor_method=extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1    
    fi
    if ! [[ -v methodnames ]]; then
        local methodnames=("extremal_perturbation" "extremal_perturbation_with_simple_scale_and_crop_normalized" "extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1" "rise" "grad_cam"  "guided_backprop" "excitation_backprop" "gradient")
    fi
    #-----------------------------------------------------
    # local n_visualize=4
    for arch in ${archs[@]};do
        local bestfile="/root/bigfiles/other/metrics-torchray/${desc}_anchor_${anchor_method}_arch_${arch}_imroots_and_class_ids"
        local fnames=("$bestfile")
        #local bestfile="/root/bigfiles/other/metrics-torchray/where_elp_gp_beter_anchor_extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1_arch_${arch}_imroots_and_class_ids"
        ##local failurefile="/root/bigfiles/other/metrics-torchray/failures_for_elp_gp_anchor_extremal_perturbation_with_simple_scale_and_crop_with_gp_gp_y_modelog_prob_gp_ncrops1100_gp_sample1_freq1_arch_${arch}_imroots_and_class_ids"
        #local failurefile="/root/bigfiles/other/metrics-torchray/failures_for_elp_gp_anchor_extremal_perturbation_arch_${arch}_imroots_and_class_ids"
        #local betterthancropfile="/root/bigfiles/other/metrics-torchray/where_elp_gp_beter_elp_crop_anchor_${ELP_SIMPLE}_arch_${arch}_imroots_and_class_ids"
        ##fnames=("$bestfile" "$failurefile" "$betterthancropfile")
        ##fnames=("$failurefile" "$betterthancropfile")
        #fnames=("$bestfile")
        # cdelp
        

        for fname in "${fnames[@]}";do
            echo $fname
            local i=0
            mapfile -t imroot_and_class_id < "$fname"
            for imroot_and_class_idi in "${imroot_and_class_id[@]}";do
                echo "$imroot_and_class_idi"
                read -r imroot class_id <<< "${imroot_and_class_idi[@]}"
                echo $i
                echo $imroot
                echo $class_id
                if [ "$fname" == "$bestfile" ]; then
                    local cmd="python scripts/collect_images.py --dataset $dataset  --arch $arch --imroot $imroot --class_id ${class_id} --methodnames ${methodnames[@]}"
                    echo "$cmd"
                    eval "$cmd"
                    

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
    #set +x
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
        local fnames=("$failurefile" "$bestfile" "$betterthancropfile")
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

echo "reloaded tmp_alias.sh"
