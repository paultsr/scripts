CD=$PWD
cd && rm -rf .bash_profile .bashrc .vim .vimrc
cd $CD
ln -s $PWD/.bash_profile $HOME/
ln -s $PWD/.bashrc $HOME/
ln -s $PWD/.vim $HOME/
ln -s $PWD/.vimrc $HOME/
source ~/.bashrc
