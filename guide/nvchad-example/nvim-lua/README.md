<h1 align="center"> ✨ My nvim-lua configuration ✨ </h1>

### Introduction
My configuration is based on [nvchad](https://github.com/NvChad/NvChad), which is a great framework and highly recommended to get to know.

It is recommended that those who are able to do so can configure themselves through this framework.

我在Bilibili的教学视频：[BV1XY411H71M](https://www.bilibili.com/video/BV1XY411H71M/)

### Showcase
![首页](https://cdn.jsdelivr.net/gh/Eatsolx/image@master/nvim-lua/首页.1yxhe6nldqbk.png)
![望远镜](https://cdn.jsdelivr.net/gh/Eatsolx/image@master/nvim-lua/望远镜.1essddfcj4rk.png)
![演示1](https://cdn.jsdelivr.net/gh/Eatsolx/image@master/nvim-lua/演示1.74lm39g7fyww.png)
![演示2](https://cdn.jsdelivr.net/gh/Eatsolx/image@master/nvim-lua/演示2.6k8xy3cwpkzk.png)
![演示3](https://cdn.jsdelivr.net/gh/Eatsolx/image@master/nvim-lua/演示3.6mnotxhh91mo.png)
![演示4](https://cdn.jsdelivr.net/gh/Eatsolx/image@master/nvim-lua/演示4.6k2qmpcr55og.png)
![演示5](https://cdn.jsdelivr.net/gh/Eatsolx/image@master/nvim-lua/演示5.58magvr69ri8.png)
![演示6](https://cdn.jsdelivr.net/gh/Eatsolx/image@master/nvim-lua/演示6.6ynqzr7583r4.png)

### Install
Install it & it's plugins with:

    git clone https://github.com/Eatsolx/nvim-lua
    cd nvim-lua
    sh install.sh

It will backup your original configuration to ~/.config/NVIM.BAK

If you encounter nvim-treesitter error when using please refer to -> [this](https://github.com/nvim-treesitter/nvim-treesitter/#language-parsers).

### Usage  (Incomplete)

#### Non plugin mappings
| Action            | Key           |
| :----:            | :----:        |
| save file         | ctrl + s      |
| exit              | ctrl + q      |
| close buffer      | space + x     |
| new buffer        | shift + t     |
| new tab           | ctrl + t + b  |
| theme toggler     | space + t + h |
| scroll up         | ctrl + b      |
| scroll down       | ctrl + f      |
| scroll up(half)   | ctrl + u      |
| scroll down(half) | ctrl + d      |

#### Navigation in insert mode
| Action      | Key      |
| :----:      | :----:   |
| backward    | ctrl + h |
| end of line | ctrl + e |
| forward     | ctrl + l |
| next line   | ctrl + j |
| prev line   | ctrl + k |
| top of line | ctrl + a |

#### Better window movement
| Action    | Key      |
| :----:    | :----:   |
| moveLeft  | ctrl + h |
| moveRight | ctrl + l |
| moveUp    | ctrl + k |
| moveDown  | ctrl + j |

#### Terminal related mappings
| Action            | Key           |
| :----:            | :----:        |
| esc termmode      | jk            |
| esc hide termmode | JK            |
| pick term         | space + W     |
| new horizontal    | space + h     |
| new vertical      | space + v     |
| new window        | space + w     |
| update nvchad     | space + u + u |

#### Plugins related mappings
| Action                   | Key           |
| :----:                   | :----:        |
| BUFFERLINE               |               |
| next buffer              | tab           |
| prev buffer              | shift + tab   |
|--------------------------|---------------|
| DASHBOARD                |               |
| bookmarks                | space + b + m |
| new file                 | space + f + n |
| open                     | space + d + b |
| find file                | space + f + f |
| session load             | space + l     |
| session save             | space + s     |
|--------------------------|---------------|
| BETTER ESCAPE            |               |
| esc insertmode           | jk            |
|--------------------------|---------------|
| FILE TREE/EXPLORER       |               |
| toggle                   | Alt + t       |
| focus                    | space + e     |
| universal code formatter |               |
| format                   | space + f + m |
|--------------------------|---------------|
| TABLE-MODE               |               |
| toggle                   | space + t + m |
|--------------------------|---------------|
| MARKDOEN PREVIEW         |               |
| toggle                   | Alt + r       |
|--------------------------|---------------|
| OTHER                    |               |
| undotree                 | Alt + u       |
| vista                    | Alt + f       |
| visual-multi             | ctrl + n      |
| file-build               | F8            |
| file-run                 | F9            |
| file-run & build         | F10           |

<h3 align="center"> ✨ For more information, please refer to nvchad's website ✨ </h3>

[![nvchad](https://cdn.jsdelivr.net/gh/Eatsolx/image@master/nvim-lua/nvchad.ea70y58lvj4.png)](https://nvchad.github.io/)
