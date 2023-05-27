local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
	"nvim-lua/plenary.nvim", -- dependency of many packages

	-- Leap to get there fast
	"ggandor/leap.nvim",

	-- Vscode colorscheme
	{
		"Mofiqul/vscode.nvim",
		lazy = false,
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme vscode]])
		end,
	},
	-- Devicons
	"nvim-tree/nvim-web-devicons",

	--Buffer line that shows tabs
	"akinsho/bufferline.nvim",

	-- Colorizer that colorize hash colors
	"norcalli/nvim-colorizer.lua",

	-- File explorer
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
	},
	-- Lua line status line
	{
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
		config = function()
			require("lualine").setup()
		end,
	},

	-- fuzzy finding w/ telescope
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x" }, -- fuzzy finder
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
	},
	{
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{ "nvim-treesitter/nvim-treesitter" },

	-- Auto completion
	"hrsh7th/nvim-cmp", -- auto completion plugin
	"hrsh7th/cmp-buffer", -- source for nvim cmp
	"hrsh7th/cmp-path", -- for path autocompletion

	-- Snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",

	-- Managing and installing lsp server
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- Configuring lsp server
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	{ "glepnir/lspsaga.nvim", branch = "main" },
	"jose-elias-alvarez/typescript.nvim",
	"onsails/lspkind.nvim",

	-- Formating and linting
	"jose-elias-alvarez/null-ls.nvim",

	-- autoclosing
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",

	-- Comment plugin
	{
		"numToStr/Comment.nvim",
		event = "VeryLazy",
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	-- Markdown plugin
	{
		"iamcco/markdown-preview.nvim",
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
			vim.g["mkdp_theme"] = "light"
			vim.g["mkdp_browser"] = "firefox"
			vim.g["mkdp_auto_close"] = 0
		end,
		ft = { "markdown" },
	},
})
