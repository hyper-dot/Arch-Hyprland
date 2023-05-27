-- Core
require("core.base")
require("core.keymappings")
require("plugins")

-- Plugins

-- UTILS
require("plugin_configs.telescope")
require("plugin_configs.autopairs")
require("plugin_configs.leap")

-- LSP
require("plugin_configs.lsp.mason")
require("plugin_configs.lsp.lspsaga")
require("plugin_configs.lsp.lspconfig")
require("plugin_configs.lsp.null-ls")
require("plugin_configs.lsp.nvim-cmp")

-- UI
require("plugin_configs.ui.neotree")
require("plugin_configs.ui.dashboard")
require("plugin_configs.ui.colorizer")
require("plugin_configs.ui.bufferline")
require("plugin_configs.ui.treesitter")
require("plugin_configs.ui.lualine")
