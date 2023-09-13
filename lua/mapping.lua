-- set the leader key
vim.g.mapleader = " "

vim.keymap.set({ "n", "i", "v", "c", "o", "s" }, "jk", "<Esc>")
vim.keymap.set("t", "jk", "<C-\\><C-n>")

-- file explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "File Explorer" })

-- telescope mappings
local t = require("telescope.builtin")
vim.keymap.set("n", "<leader>fF", t.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>ff", t.find_files, { desc = "Find Project Files" })
vim.keymap.set("n", "<leader> ", t.buffers, { desc = "Find Buffers" })
vim.keymap.set("n", "<leader>fg", t.live_grep, { desc = "Grep" })
vim.keymap.set("n", "<leader>ss", t.treesitter, { desc = "Find Symbols" })

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

vim.keymap.set("n", "<C-s>", ":e ~/.config/nvim<CR>", { desc = "Configuration" })

vim.keymap.set("n", "<leader>pw", ":mksession ~/.local/state/nvim/sessions/", { desc = "Save Session" })
vim.keymap.set("n", "<leader>pl", ":source ~/.local/state/nvim/sessions/", { desc = "Load Session" })
