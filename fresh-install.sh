echo "apt-get -y update && apt-get -y install python-software-properties" \
	| sudo sh
# Node & NPM
echo "apt-add-repository ppa:chris-lea/node.js" | sudo sh
# Nginx
echo "apt-add-repository ppa:nginx/stable" | sudo sh
# MongoDB
echo "apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10" | sudo sh
sudo sh -c 'echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" >> /etc/apt/sources.list'

echo "apt-get update && apt-get -y dist-upgrade && apt-get -y upgrade" | sudo sh
# Essentials
echo "apt-get -y install make autoconf build-essential libssl-dev libpcre3-dev libncurses-dev" | sudo sh
# Essential programs/binaries
echo "apt-get -y install vim curl wget rsync git" | sudo sh
