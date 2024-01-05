SRC_INSTANCE=""
TGT_INSTANCE=""
#====================================================================
#bigfiles   download_code.sh  evaluate-saliency-4  myhelp      private-for-vast         tmux-sessions  vast-utils
#debugging  dummy             hasbooted            onstart.sh  redo_port_forwarding.sh  todo
#====================================================================
# /opt/conda/envs/gpnnenv/bin/python
#====================================================================
#vast copy SRC_INSTANCE: TGT_INSTANCE:
vast copy SRC_INSTANCE:/root/bigfiles TGT_INSTANCE:/root/bigfiles
vast copy SRC_INSTANCE:/root/evaluate-saliency-4 TGT_INSTANCE:/root/evaluate-saliency-4
vast copy SRC_INSTANCE:/root/myhelp TGT_INSTANCE:/root/myhelp
vast copy SRC_INSTANCE:/root/vast-utils TGT_INSTANCE:/root/vast-utils
vast copy SRC_INSTANCE:/root/todo TGT_INSTANCE:/root/todo
vast copy SRC_INSTANCE:/opt/conda/envs/gpnnenv TGT_INSTANCE:/opt/conda/envs/gpnnenv

