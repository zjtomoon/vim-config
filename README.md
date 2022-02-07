# vim-plug/packer.nvim插件管理器加速

## 方法一：修改文件使用国内镜像

```bash
# 修改原来的 https://github.com/
    https://github.com.cnpmjs.org/

    https://gitcode.net/mirrors/
```

## 方法二：修改~/.gitconfig

```bash
[url "git@git.zhlh6.cn:"]
      insteadof=git@github.com:

[url "https://github.com.cnpmjs.org/"]
      insteadof=https://github.com/
```

## 方法三：使用fastgithub后台服务

```bash
mkdir download # ~/download
cd ~/download
wget https://github.com/zjtomoon/vim-config/releases/download/v1.0.0/linux-x64.zip
```


