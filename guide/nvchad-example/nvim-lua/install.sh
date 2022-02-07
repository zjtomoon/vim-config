#!/bin/bash

mv ~/.config/nvim ~/.config/NVIM.BAK
cp -r NvChad ~/.config/nvim
mv ~/.config/nvim/git ~/.config/nvim/.git
mv ~/.config/nvim/github ~/.config/nvim/.github
cp -r custom ~/.config/nvim/lua
cp upload.sh ~/.config/nvim/
echo "安装成功，旧配置已保存至~/.config/NVIM.BAK"
read -s -n1 -p "按任意键继续 ... "
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
