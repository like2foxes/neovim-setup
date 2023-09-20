vim.g.mapleader = " "

local wk = require("which-key")
wk.register({
	f = { "<cmd>Telescope find_files<cr>", "Find [F]ile" },
	g = { "<cmd>Telescope live_grep<cr>", "[G]rep"},
	s = { "<cmd>Telescope treesitter<cr>", "Find [S]ymbol"},
	b = { "<cmd>Telescope buffers<cr>", "Find [B]uffers"},
	e = { "<cmd>Sexplore<cr>", "File [E]xplorer"},
	c = {
		name = "[C]ode",
		f = { vim.lsp.buf.format, "[F]ormat Buffer" },
	}
}, {
	prefix = "<leader>"
})


vim.keymap.set({"i","v","c", "n"}, "jk", "<Esc>", { noremap = true })
vim.keymap.set("t", "jk", "<C-\\><C-n>", { noremap = true })
vim.keymap.set("n", "<C-s>", ":e ~/.config/nvim<CR>", { desc = "Configuration" })

vim.keymap.set("v", "<leader>cf", function()
	vim.lsp.buf.format({
		async = true,
		range = {
			["start"] = vim.api.nvim_buf_get_mark(0, "<"),
			["end"] = vim.api.nvim_buf_get_mark(0, ">"),
		}
	})
end, { desc = "Format Selection" })
