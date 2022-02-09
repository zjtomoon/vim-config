-- This is an example chadrc file , its supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "onedark",
}

M.options = {
   relativenumber = true,
}

M.plugins = {
   status = {
      dashboard = true,
   },
   options = {
      lspconfig = {
         setup_lspconf = "custom.lsp.lspconfig"
      }
   },
   default_plugin_config_replace = {
      dashboard = "custom.dashboard.dashboard",
    },
}

return M
