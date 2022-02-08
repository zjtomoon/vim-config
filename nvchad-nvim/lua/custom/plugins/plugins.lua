-- Example plugins file!
-- (suggestion) -> lua/custom/plugins/init.lua or anywhere in custom dir

return {
   { "elkowar/yuck.vim", ft = "yuck" },
   { "ellisonleao/glow.nvim", cmd = "Glow" },
   -- lsp-installer
   {
     "williamboman/nvim-lsp-installer",
   },

   {
     "fatih/vim-go"
   }, 

   -- 自动打开上次浏览位置
  {
    "farmergreg/vim-lastplace"
  },
  -- 历史修改记录
  {
     "mbbill/undotree",
     opt = true,
     cmd = "UndotreeToggle",
  },
  {
    "tpope/vim-surround",
     keys = {"c", "d", "S"},
  },
  {
    "Chiel92/vim-autoformat",
    cmd = "Autoformat",
  },
  --分析启动时间
  {
     "dstein64/vim-startuptime",
     cmd = "StartupTime",
  },
  
  {
    "karb94/neoscroll.nvim",
     opt = true,
     config = function()
        require("neoscroll").setup()
     end,

     -- lazy loading
     setup = function()
       require("core.utils").packer_lazy_load "neoscroll.nvim"
     end,
  },
}

