require("lazy-config")
require("lsp-zero-config")
require("git-signs-config")
require("session-config")
require("mapping")
require("options")

vim.api.nvim_create_autocmd({ "BufEnter" }, { pattern = { "*" }, command = "normal zx", })

