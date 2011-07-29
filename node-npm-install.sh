#################################################
# Author: Dan Simmons
# www.github.com/dsimmons
#
# Prerequisites:  Assumes you have git installed.
#################################################

if [ ! -d ~/source ]; then
	mkdir ~/source 
fi

sudo mkdir -p /usr/local/{share/man,bin,lib/node,include/node}
sudo chown $USER /usr/local/{share/man,bin,lib/node,include/node}

cd ~/source
if [ ! -d ./node ]; then
	git clone git://github.com/joyent/node.git && cd node
else
	cd node && git pull
fi

git checkout v0.4.9 	#latest stable atm
./configure
make install


cd ~/source
if [ ! -d ./npm ]; then
	git clone git://github.com/isaacs/npm.git && cd npm
else
	cd npm && git pull
fi
make install


