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
alias trydutils='python -c "import dutils"'
alias cdcam="cd /root/evaluate-saliency-4/cam-benchmark/"
alias tryelp="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias trycompile="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true --use_compiled_model true"
alias vimattribution="vim /root/evaluate-saliency-4/elp_with_scales/examples/attribution_benchmark.py"
alias trysaver="python -m ipdb -c c examples/attribution_benchmark.py --method dummy --continue_  --arch resnet50 --dataset voc_2007 --save_detailed_results true --start 1000 --end 2000"
alias trysaver0="python -m ipdb -c c examples/attribution_benchmark.py --method dummy   --arch resnet50 --dataset voc_2007 --save_detailed_results true "
#alias trywrong="python -m ipdb -c c examples/attribution_benchmark.py --method dummy1 --continue_  --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias tryimagenet="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation --start 2000 --end 3000 --continue_ --arch resnet50 --dataset imagenet-5000 --save_detailed_results true"
alias tryunw="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation_with_unweighted_scale_and_crop --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias trynormalized="python -m ipdb -c c examples/attribution_benchmark.py --method extremal_perturbation_with_simple_scale_and_crop_normalized --start 2000 --end 3000 --continue_ --arch resnet50 --dataset voc_2007 --save_detailed_results true"
alias cdvscripts="cd /root/evaluate-saliency-4/elp_with_scales/vast-scripts"
alias cdrscripts="cd /root/evaluate-saliency-4/elp_with_scales/run-scripts"
