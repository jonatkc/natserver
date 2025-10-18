-- Define the plugins table
local plugins = {
	{ "ThePrimeagen/vim-be-good" },
	-- Git
	{ "tpope/vim-fugitive" },
	--themes
	{ "shaunsingh/nord.nvim" },
	{ "AlexvZyl/nordic.nvim" },
	{ "rmehri01/onenord.nvim" },
	{ "VonHeikemen/fine-cmdline.nvim" },
	{ "MunifTanjim/nui.nvim" },
	{ "catppuccin/nvim" },
	{ "rose-pine/neovim", name = "rose-pine" },
	-- code snippets
	{
		"michaelrommel/nvim-silicon",
		lazy = true,
		cmd = "Silicon",
		config = function()
			require("silicon").setup({
				font = "FantasqueSansMono Nerd Font=16",
				theme = "Monokai Extended",
			})
		end,
	},
	-- notes
	{
		"echasnovski/mini.nvim",
		name = "mini.nvim",
		url = "https://github.com/nvim-mini/mini.nvim",
	},

	-- render-markdown plugin setup
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" }, -- if you use the mini.nvim suite
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' }, -- if you use standalone mini plugins
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equalent to setup({}) function
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
}

-- Return the plugins table
return plugins
