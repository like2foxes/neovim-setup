vim.g.mapleader = " "
vim.keymap.set("n", "gR", function() require("trouble").open("lsp_references") end, { desc = "References" })
vim.keymap.set("t", "", ">", { noremap = true })

vim.keymap.set("n", "gb", "<nop>", { noremap = true })
vim.keymap.set("n", "gc", "<nop>", { noremap = true })

vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "Go to Definition" })

vim.keymap.set("v", "<leader>cf", function()
	vim.lsp.buf.format({
		async = true,
		range = {
			["start"] = vim.api.nvim_buf_get_mark(0, "<"),
			["end"] = vim.api.nvim_buf_get_mark(0, ">"),
		}
	})
end, { desc = "Format Selection" })
