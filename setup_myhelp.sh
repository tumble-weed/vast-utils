git clone https://tumble-weed:$GH@github.com/tumble-weed/myhelp
mv myhelp /root
#echo "source `realpath /root/myhelp/cmd.md`"
echo "source `realpath /root/myhelp/cmd.sh`" >> /root/.bashrc
