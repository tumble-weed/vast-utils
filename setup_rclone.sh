curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip
#cd rclone-v1.56.0-linux-amd64/
cd rclone-*-linux-amd64/



cp rclone /usr/bin/
chown root:root /usr/bin/rclone
chmod 755 /usr/bin/rclone


mkdir -p /usr/local/share/man/man1
cp rclone.1 /usr/local/share/man/man1/
mandb 
(
git clone https://tumble-weed:$GH@github.com/tumble-weed/private-for-vast2
cd private-for-vast2
mkdir -p /root/.config/rclone
cp rclone.conf /root/.config/rclone
cd -
)
