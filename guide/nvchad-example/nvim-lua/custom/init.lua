local customPlugins = require "core.customPlugins"

customPlugins.add(function(use)
  -- 平滑滚动
  use {
    "karb94/neoscroll.nvim",
     opt = true,
     config = function()
        require("neoscroll").setup()
     end,

     -- lazy loading
     setup = function()
       require("core.utils").packer_lazy_load "neoscroll.nvim"
     end,
  }

  -- 自动打开上次浏览位置
  use {
    "farmergreg/vim-lastplace"
  }

  -- 历史修改记录
  use {
        "mbbill/undotree",
        opt = true,
        cmd = "UndotreeToggle",
  }

  -- 多光标
  use {
    "mg979/vim-visual-multi",
    keys = "<C-n>",
  }

  -- 增删改引号
  use {
    "tpope/vim-surround",
    keys = {"c", "d", "S"},
  }

  -- 快速选中
  use {
    "gcmt/wildfire.vim",
    keys = "<CR>",
  }

  -- 代码格式化
  -- use {
  --     "jose-elias-alvarez/null-ls.nvim",
  --     after = "nvim-lspconfig",
  --     config = function()
  --        require("custom.configs.null-ls").setup()
  --     end,
  --  }
  use {
    "Chiel92/vim-autoformat",
    cmd = "Autoformat",
  }
  -- use {
  --   "mhartington/formatter.nvim",
  --   opt = true,
  --   ft = "cpp",
  --   config = function ()
  --     require("custom.configs.format")
  --   end,
  -- }

  -- 快速分析启动时间
  use {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
  }

  -- 编辑只读文件
  use {
    "lambdalisue/suda.vim",
    cmd = "SudaWrite",
  }

  -- 现代任务系统
  use {
    "skywind3000/asynctasks.vim",
    requires = "skywind3000/asyncrun.vim",
    cmd = {"AsyncTask", "AsyncTaskEdit"},
  }

  -- 函数列表
  use {
    "liuchengxu/vista.vim",
    cmd = "Vista",
  }

  -- markdown预览
  use {
    "iamcco/markdown-preview.nvim",
    run = "cd app && yarn install",
    ft = "markdown",
  }

  -- 制作markdown表格
  use {
    "dhruvasagar/vim-table-mode",
    cmd = "TableModeToggle",
  }

  -- 自动切换输入法
  use {
    "lilydjwg/fcitx.vim",
    keys = {'i', 'a', 'I', 'A', 'c', 'o', 'O'},
  }

end)

-- 添加一些init配置
require "custom.custom_init"
-- 按键映射
require "custom.custom_mappings"
