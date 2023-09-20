require("options")
require("lazy-config")
require("lsp-zero-config")
require("which-key-config")

vim.api.nvim_create_autocmd({ "BufEnter" }, { pattern = { "*" }, command = "normal zx", })
