-- Define the plugins table
local plugins = {
	{ "ThePrimeagen/vim-be-good" },
	--themes
	{ "shaunsingh/nord.nvim" },
	{ "catppuccin/nvim" },
	{ "rose-pine/neovim", name = "rose-pine" },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equalent to setup({}) function
	},
}

-- Return the plugins table
return plugins
