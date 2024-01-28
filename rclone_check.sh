parent_local_dir='/root/bigfiles/other'
rel_dir='results-torchray'
#rel_dir='results-torchray/voc_2007-gradient-resnet50/003742'
local_dir="${parent_local_dir}/${rel_dir}"
#ls "$local_dir" | wc -l
if [[ -d "$local_dir" ]]; then
    echo "${local_dir} exists"
else
    :
    fi
rclone check "aniketsinghresearch-gdrive:${rel_dir}" "${local_dir}" --differ /root/vast-utils/vast-112-differ --missing-on-src /root/vast-utils/vast-112-missing-gdrive --missing-on-dst /root/vast-utils/vast-112-missing-local

