vim.g.mapleader = " "
vim.keymap.set("n", "gR", function() require("trouble").open("lsp_references") end, { desc = "References" })

vim.keymap.set({ "i", "v", "c", "n" }, "jk", "<Esc>", { noremap = true })
vim.keymap.set("t", "jk", "<C-\\><C-n>", { noremap = true })

vim.keymap.set("v", "<leader>cf", function()
	vim.lsp.buf.format({
		async = true,
		range = {
			["start"] = vim.api.nvim_buf_get_mark(0, "<"),
			["end"] = vim.api.nvim_buf_get_mark(0, ">"),
		}
	})
end, { desc = "Format Selection" })
