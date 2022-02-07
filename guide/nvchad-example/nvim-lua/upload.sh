#!/bin/bash

rm -rf ~/Desktop/nvim-lua/custom
cp -r lua/custom ~/Desktop/nvim-lua/
cd ~/Desktop/nvim-lua/
rm -rf NvChad
git clone https://github.com/NvChad/NvChad
rm -rf NvChad/examples
mv NvChad/.git NvChad/git
mv NvChad/.github NvChad/github
git remote set-url origin git@github.com:Eatsolx/nvim-lua.git
echo "复制成功"
read -s -n1 -p "按任意键继续 ... "
