return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.2',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local actions = require("telescope.actions")
		local trouble = require("trouble.providers.telescope")
		require 'telescope'.setup {
			defaults = {
				file_ignore_patterns = {
					"node_modules"
				},
				mappings = {
					i = { ["<C-t>"] = trouble.open_with_trouble },
					n = { ["<C-t>"] = trouble.open_with_trouble },
				}
			}
		}
	end
}
