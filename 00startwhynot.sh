sudo zerotier-one -d
sleep 2
if [ ! -d "/tmp/onedrive" ];then
#sudo rm -rf /tmp/onedrive
sudo rm -rf /tmp/rclone
sudo mkdir /tmp/ariadown
sudo mkdir /tmp/rclone
sudo mkdir /tmp/onedrive
sudo rclone mount e5: /tmp/onedrive --allow-non-empty --daemon --vfs-cache-mode writes --allow-other --cache-dir /tmp/rclone && df -hl
sudo ls /tmp/onedrive/
#sudo service netdata restart
sleep 5
sudo docker restart e5renew
sleep 2
sudo docker restart xubuntu
sleep 2
sudo docker restart ubuntu
sleep 2
sudo docker restart ariang
sudo docker restart alist
sleep 2
sudo docker restart aria2-pro
sleep 2
sudo docker restart socks5
sudo v2hidealist/v2ray/sbin/v2ray -config v2hidealist/v2ray/etc/config.json >/dev/null 2>&1 &
sudo bt restart
#sudo vncserver :1 
#sudo ./ngx restart
#sudo nethogs
fi
sudo htop
#PORT:
#v2ray:10000
#netdata:19999
#1vnc:5900
#2vnc:5901
#1novnc:5980
#2novnc:5981
#ngxadmin:7070
#ngxcloud:8090
#e5renew:1066
#ariang:6880
echo done 