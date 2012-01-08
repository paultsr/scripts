# Symlink ~/dotfile config files to $HOME 
# Usage: Call install-symlinks.sh from --> ~/dotfiles <--
# TODO (maybe): Make more robust at some point.

###### WARNING: Deletes/replaces the below config files. ########
CD=$PWD
cd && rm -rf .bash_profile .bashrc .vim .vimrc
cd $CD
ln -s $PWD/.bash_profile $HOME/
ln -s $PWD/.bashrc $HOME/
ln -s $PWD/.gitconfig $HOME/
ln -s $PWD/.vim $HOME/
ln -s $PWD/.vimrc $HOME/
source ~/.bashrc
