return {
	"folke/neodev.nvim",
	opts = {},
	dependencies = {
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		require("neodev").setup {
			library = {
				plugins = {
					"nvim-dap-ui",
				},
				types = true,
			}
		}
	end,
}
