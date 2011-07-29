#################################################
# Author: Dan Simmons
# www.github.com/dsimmons
#
# Prerequisites:  Assumes you have git installed.
#################################################

if [ ! -d ~/source ]; then
	echo "Creating directory $USR/source."
	echo "This is where we're going to keep Node and NPM up-to-date!"
	mkdir ~/source 
fi

echo "Chowning the directories that we'll need...."
echo "Now, with 100% less sudo!"
sudo mkdir -p /usr/local/{share/man,bin,lib/node,lib/node_modules,lib/pkgconfig,include/node}
sudo chown $USER /usr/local/{share/man,bin,lib/node,lib/node_modules,lib/pkgconfig,include/node}

cd ~/source
if [ ! -d ./node ]; then
	"Git repo does not currently exist for Node, cloning..."
	git clone git://github.com/joyent/node.git && cd node
else
	"Updating existing git repo for Node..."
	cd node && git pull
fi

echo "Checking out the latest stable version of Node that we know of..."
git checkout v0.4.9 	#latest stable atm
./configure
echo "Installing Node! Please be patient, this might take a while."
make install


cd ~/source
if [ ! -d ./npm ]; then
	"Git repo does not currently exist for NPM, cloning..."
	git clone git://github.com/isaacs/npm.git && cd npm
else
	"Updating existing git repo for NPM..."
	cd npm && git pull
fi
echo "Installing NPM! This won't hurt a bit."
make install


