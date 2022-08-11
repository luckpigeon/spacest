curl -s https://install.zerotier.com | sudo bash
#alpine：apk update && apk add zerotier-one
sudo zerotier-one -d
sudo zerotier-cli join ${ZERO}
sudo zerotier-cli listnetworks

docker exec zerotier zerotier-cli join ${ZERO}
docker exec zerotier zerotier-cli listnetworks
 
apt install nethogs
apt install xdotool