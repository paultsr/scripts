#################################################
# Author: Dan Simmons
# www.github.com/dsimmons
#
# WARNING: DOES NOT work if you have rvm installed.
#################################################

echo "Installing dependencies..."
echo "apt-get update && apt-get install -y git curl build-essential zlib1g-dev libssl-dev" \
	| sudo sh
echo "Update complete!"

echo "Installing rbenv..."
cd && git clone git://github.com/sstephenson/rbenv.git .rbenv
DEST=$HOME/.bash_profile
if [ -f $HOME/.bashrc ]; then
	DEST=$HOME/.bashrc
fi
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $DEST
echo 'eval "$(rbenv init -)"' >> $DEST
source $DEST
echo "rbenv installed successfully!"

echo "Installing ruby-build..."
cd $HOME/.rbenv && git clone git://github.com/sstephenson/ruby-build.git
cd ruby-build
echo "./install.sh" | sudo sh
echo "ruby-build installed successfully!"

echo "Installing Ruby 1.9.2..."
rbenv install 1.9.2-p290
rbenv rehash
echo "Ruby 1.9.2 installed successfully!"

echo "Installing Octopress..."
cd
git clone git://github.com/imathis/octopress.git && cd octopress
gem install bundler && rbenv rehash
bundle install
rake install
echo "Octopress installed successfully!"
