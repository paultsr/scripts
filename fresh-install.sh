# Prepare for adding repositories.
echo "apt-get -y update && apt-get -y install python-software-properties" \
	| sudo sh

# Node & NPM
echo "apt-add-repository ppa:chris-lea/node.js" | sudo sh

# Nginx
echo "apt-add-repository ppa:nginx/stable" | sudo sh

# MongoDB
echo "apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10" | sudo sh
sudo sh -c 'echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" >> /etc/apt/sources.list'

# Go ahead and refresh our list of packages, dist-upgrade if we need to.
echo "apt-get update && apt-get -y dist-upgrade && apt-get -y upgrade" | sudo sh

# Build & dependency essentials
echo "apt-get -y install build-essential make autoconf" | sudo sh
echo "apt-get -y install libssl-dev zlib1g-dev libpcre3-dev libncurses-dev" | sudo sh

# Essential programs/binaries
echo "apt-get -y install vim curl wget zip rsync git" | sudo sh

# If present, this process will *kill* low-powered servers (ex: Micro EC2)
# http://gregsramblings.com/2011/02/07/amazon-ec2-micro-instance-cpu-steal/
echo "apt-get purge apt-xapian-index" | sudo sh
