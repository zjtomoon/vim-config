mkdir -p ~/.local/share/nvim/site/autoload/
cp ../plug.vim ~/.local/share/nvim/site/autoload/plug.vim

mkdir -p ~/.config/nvim

cp ../init.vim ~/.config/nvim/init.vim

#安装nodejs以安装coc插件
mkdir -p ~/download
cd ~/download
wget https://nodejs.org/download/release/v12.22.0/node-v12.22.0-linux-x64.tar.gz
mkdir ~/software
tar -zxvf node-v12.22.0-linux-x64.tar.gz -C ~/software

#下载和安装nvim
cd ~/download
wget https://github.com/neovim/neovim/releases/download/v0.6.0/nvim-linux64.tar.gz
mkdir ~/software
tar -zxvf nvim-linux64.tar.gz -C ~/software/


