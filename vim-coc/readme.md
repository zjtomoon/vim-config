# vim配置

> 该版本配置适合于centos7等版本较老的linux发行版
> 
> vim version > 8.0或neovim version >0.4(推荐使用neovim,因为相同插件下vim可能有点bug)
> 
> node >= 12.22

# 初始化

+ 1、执行init.sh，把配置文件拷贝到适当位置

+ 2、修改环境变量 vim ~/.bashrc 把nodejs的位置输入到环境变量中

+ 3、执行popst-init.sh 执行后续操作

+ 4、打开vim,执行:PlugInstall命令，安装vim插件

+ 5、再次打开vim 安装coc插件

# 其他

neovim 0.6以上版本自带lsp语言支持，有兴趣可以尝试

[neovim lua配置](https://github.com/zjtomoon/lua-neovim.git)


