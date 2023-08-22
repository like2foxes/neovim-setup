-- set the leader key
vim.g.mapleader = " "

-- file explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "File Explorer" })

-- telescope mappings
local t = require("telescope.builtin")
vim.keymap.set("n", "<leader>fF", t.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>ff", t.find_files, { desc = "Find Project Files" })
vim.keymap.set("n", "<leader> ", t.buffers, { desc = "Find Buffers" })
vim.keymap.set("n", "<leader>fg", t.grep_string, { desc = "Grep" })
vim.keymap.set("n", "<leader>fs", t.treesitter, { desc = "Find Symbols" })

-- lsp formating
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format Buffer" })
vim.keymap.set("v", "<leader>cf", function()
	vim.lsp.buf.format({
		async = true,
		range = {
			["start"] = vim.api.nvim_buf_get_mark(0, "<"),
			["end"] = vim.api.nvim_buf_get_mark(0, ">"),
		}
	})
end, { desc = "Format Selection" })
