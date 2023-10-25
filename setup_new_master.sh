NEWINSTANCEID="7298816"
# ssh -p 43942 root@134.215.109.213 -L 8080:localhost:8080
NEWIP="134.215.109.213"
PORT="43942"
SSHKEYPATH="/root/.ssh/shared_with_shubham"
echo "rsync -arz -v --progress --rsh=ssh -e 'ssh -i $SSHKEYPATH -p $PORT -o StrictHostKeyChecking=no' /root/todo root@$NEWIP:/root;"
tmux kill-session -t t-setup-new-master
tmux new-session -d -s t-setup-new-master """(

# vast copy /root/todo $NEWINSTANCEID:/root;
rsync -arz -v --progress --rsh=ssh -e 'ssh -i $SSHKEYPATH -p $PORT -o StrictHostKeyChecking=no' /root/todo root@$NEWIP:/root;

# vast copy /root/evaluate-saliency-4 $NEWINSTANCEID:/root;
rsync -arz -v --progress --rsh=ssh -e 'ssh -i $SSHKEYPATH -p $PORT -o StrictHostKeyChecking=no' /root/evaluate-saliency-4 root@$NEWIP:/root;

# vast copy /root/instance_info.sh $NEWINSTANCEID:/root/instance_info.sh;
# rsync -arz -v --progress --rsh=ssh -e 'ssh -i $SSHKEYPATH -p $PORT -o StrictHostKeyChecking=no' /root/instance_info.sh root@$NEWIP:/root;


echo \"ssh config\";
rsync -arz -v --progress --rsh=ssh -e 'ssh -i $SSHKEYPATH -p $PORT -o StrictHostKeyChecking=no' /root/.ssh/config root@$NEWIP:/root/.ssh;

echo \"ssh key\";
rsync -arz -v --progress --rsh=ssh -e 'ssh -i $SSHKEYPATH -p $PORT -o StrictHostKeyChecking=no' /root/.ssh/shared_with_shubham* root@$NEWIP:/root/.ssh;

echo \"tmux conf\";
rsync -arz -v --progress --rsh=ssh -e 'ssh -i $SSHKEYPATH -p $PORT -o StrictHostKeyChecking=no' /root/.tmux.conf root@$NEWIP:/root/.tmux.conf;

echo \"general conf\";
rsync -arz -v --progress --rsh=ssh -e 'ssh -i $SSHKEYPATH -p $PORT -o StrictHostKeyChecking=no' /root/.config root@$NEWIP:/root;

echo \"conda env\";
rsync -arz -v --progress --rsh=ssh -e 'ssh -i $SSHKEYPATH -p $PORT -o StrictHostKeyChecking=no' /opt/conda/envs/gpnnenv root@$NEWIP:/opt/conda/envs;

echo \"vast utils\";
rsync -arz -v --progress --rsh=ssh -e 'ssh -i $SSHKEYPATH -p $PORT -o StrictHostKeyChecking=no' /root/vast-utils root@$NEWIP:/root;

echo \"bigfiles\";
rsync -arz -v --progress --rsh=ssh -e 'ssh -i $SSHKEYPATH -p $PORT -o StrictHostKeyChecking=no' /root/bigfiles root@$NEWIP:/root;

echo \"done\";
bash
)
"""
tmux a -t t-setup-new-master