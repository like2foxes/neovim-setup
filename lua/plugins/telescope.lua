return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.2',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'xiyaowong/telescope-emoji.nvim'
		},
		config = function()
			local actions = require("telescope.actions")
			require('telescope').load_extension('ui-select')
			require('telescope').load_extension('emoji')
			require('telescope').load_extension('neoclip')
		end
	},
	{
		'nvim-telescope/telescope-ui-select.nvim',
		"nvim-telescope/telescope-file-browser.nvim",
		"nvim-telescope/telescope-hop.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{
			'AckslD/nvim-neoclip.lua',
			opts = {}
		}
	}
}
