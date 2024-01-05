alias runsess="cd $ELP; CUDA_VISIBLE_DEVICES=, python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation_with_sess_scale_and_crop --start 0 --end 5000 --continue_ --arch vgg16 --dataset voc_2007"
alias s115="ssh vast-115"
alias s117="ssh vast-117"
alias s119="ssh vast-119"

function cdresults (){
    set-title results
    cd /root/bigfiles/other/results-torchray
}

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
alias trycompile="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true --use_compiled_model true"
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
alias trysanity="python -m ipdb -c c /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/sanity_check.py"
alias cdexamples="cd /root/evaluate-saliency-4/elp_with_scales/examples"
alias cdrunscripts="cd /root/evaluate-saliency-4/elp_with_scales/run-scripts"
alias makedummycorr="python -m ipdb -c c examples/attribution_benchmark.py --method grad_cam --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true;python -m ipdb -c c examples/attribution_benchmark.py --method dummy --start 2000 --end 3000  --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias vimsanity="vim /root/evaluate-saliency-4/cam-benchmark/cam_benchmark/sanity_check.py"
alias vimrank="vim /root/evaluate-saliency-4/elp_with_scales/examples/rank_correlation.ipy"
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
alias finddonefilelist="echo /root/evaluate-saliency-4/elp_with_scales/scripts/create_donefilelist.py"alias findgenrunscripts="echo /root/evaluate-saliency-4/elp_with_scales/scripts/generate_run_scripts.py"
alias examplegenrunscripts="echo \"cdelp;python scripts/generate_run_scripts.py --start 0 --end 5000 --n_parts 4 --arch vgg16 --method extremal_perturbation_with_composition --dataset voc_2007 --continue\""
alias findsetupvast="echo /root/evaluate-saliency-4/elp_with_scales/vast-scripts/setup_vast_instance.py"
alias examplesetupvastinstance="echo \"python vast-scripts/setup_vast_113.py\""

function check_upload() {
    local instance_name="$1"
    #echo "Instance Name: $instance_name"
    tma t-upload-benchmark-$instance_name
    tma t-upload-dutils-$instance_name
    tma t-upload-elp-$instance_name
    tma t-upload-gpnnenv-$instance_name
    #tma t-upload-sess-$instance_name
    #tma t-vast-$instance_name
}
function check_running() {
    local instance_name="$1"
    #echo "Instance Name: $instance_name"
    code=`python -c "s=\"$instance_name\";print(s[len('vast-'):])"`
    #echo $code
    ssh -t "$instance_name" "tmux attach-session -t t-$code"
    }
function download_from_instance() {
    local instance_name="$1"
    bash /root/evaluate-saliency-4/elp_with_scales/scripts/download_results.sh $instance_name
}
function check_download() {
    local instance_name="$1"
    tma t-download-$instance_name
    }
function setup_instance(){
    local instance_name="$1"
    python /root/evaluate-saliency-4/elp_with_scales/vast-scripts/setup_vast_instance.py $instance_name
}
alias vimselect="vim /root/evaluate-saliency-4/elp_with_scales/examples/select_results.py"
alias tryselect="cdelp;python examples/select_results.py"
alias trydofilelist="python -m ipdb -c c examples/attribution_benchmark.py --method rise --arch resnet50 --dataset voc_2007 --save_detailed_results true --use_dofilelist /tmp/dummy_dolist.txt"

alias vimtmprun="vim /tmp/run_on_single_image_a.py"
alias vimbackend="vim /root/evaluate-saliency-4/elp_with_scales/torchray/benchmark/backend_for_run_on_image.py"
