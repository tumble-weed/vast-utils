TGT_INSTANCE="vast-112c"
#====================================================================
#bigfiles   download_code.sh  evaluate-saliency-4  myhelp      private-for-vast         tmux-sessions  vast-utils
#debugging  dummy             hasbooted            onstart.sh  redo_port_forwarding.sh  todo
#====================================================================
# /opt/conda/envs/gpnnenv/bin/python
#====================================================================
#rsyc -azPv  $TGT_INSTANCE:
while true;do
    rsync -azPv /opt/conda/envs/gpnnenv/ $TGT_INSTANCE:/opt/conda/envs/gpnnenv &&\
    rsync -azPv /root/instance_info.sh $TGT_INSTANCE:/root/instance_info.sh &&\
    rsync -azPv /root/bigfiles/ $TGT_INSTANCE:/root/bigfiles &&\
    rsync -azPv /root/evaluate-saliency-4/ $TGT_INSTANCE:/root/evaluate-saliency-4 &&\
    rsync -azPv /root/myhelp/ $TGT_INSTANCE:/root/myhelp &&\
    rsync -azPv /root/vast-utils/ $TGT_INSTANCE:/root/vast-utils &&\
    rsync -azPv /root/todo/ $TGT_INSTANCE:/root/todo &&\
    rsync -azPv /root/todo2/ $TGT_INSTANCE:/root/todo2 &&\
    #rsync -azPv /root/dutils/ $TGT_INSTANCE:/root/dutils
    #rsync -azPv /opt/conda/ $TGT_INSTANCE:/opt/conda/
    echo "one round of copy done"
    sleep 60
done
