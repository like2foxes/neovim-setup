return {
	"rcarriga/nvim-notify",
	opts = {},
	config = function()
		vim.notify = require("notify")
		require("telescope").load_extension("notify")
	end
}
