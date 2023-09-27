vim.g.mapleader = " "
vim.keymap.set("n", "gR", function() require("trouble").open("lsp_references") end, { desc = "References" })

vim.keymap.set("t", "", "<C-\\><C-n>", { noremap = true })

vim.keymap.set("v", "<leader>cf", function()
	vim.lsp.buf.format({
		async = true,
		range = {
			["start"] = vim.api.nvim_buf_get_mark(0, "<"),
			["end"] = vim.api.nvim_buf_get_mark(0, ">"),
		}
	})
end, { desc = "Format Selection" })
