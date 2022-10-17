sudo -i 
apt-get install fuse
#sudo curl https://rclone.org/install.sh | sudo bash
#这个文件是用来帮助我自动安装 macos-docker 的
#启动命令为cd macos && docker-compose up -d
#sudo mkdir -p /root/.config/rclone/
#sudo unzip -P $PASSWD rclone.zip -d /root/.config/rclone/
#sudo unzip -P $PASSWD rclone.zip -d $HOME/.config/rclone/
sudo rclone lsf e5:/codespace/macos-docker/ > "rclone5dir.log"
sudo rclone copy e5:/codespace/macos-docker/firmware/ ./macos/firmware/ -P
sudo rclone copy e5:/codespace/macos-docker/docker-compose.yml ./macos -P
sudo rclone copy e5:/codespace/macos-docker/BaseSystem.img ./macos -P
sudo rclone copy e5:/codespace/macos-docker/ESP.qcow2 ./macos -P
sudo rclone copy e5:/codespace/macos-docker/Dockerfile ./macos -P
sudo rclone copy e5:/codespace/macos-docker/headless.sh ./macos -P
sudo rclone copy e5:/codespace/macos-docker/MyDisk.qcow2 /tmp/macos -P