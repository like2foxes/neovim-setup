return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			{ "williamboman/mason.nvim", opts = {} },
		},
		opts = {},
		config = function()
			require('mason-lspconfig').setup_handlers {
				function(server_name)
					if server_name == 'tsserver' then
						require("lspconfig")[server_name].setup {
							settings = {
								filetypes = {
									"javascript",
									"javascriptreact",
									"javascript.jsx",
									"typescript",
									"typescriptreact",
									"typescript.tsx",
									"html",
								},
								implicitProjectConfiguration = {
									checkJs = true
								}
							}
						}
					elseif server_name == 'lua_ls' then
						require('lspconfig')[server_name].setup {
							settings = {
								Lua = {
									diagnostics = {
										-- Get the language server to recognize the `vim` global
										globals = { 'vim' },
									},
								},
							},
						}
					elseif server_name == 'clangd' then
						require("lspconfig")[server_name].setup {
							cmd = {
								"clangd",
								"--background-index",
								"--clang-tidy",
								"--completion-style=bundled",
								"--header-insertion=iwyu",
								"--suggest-missing-includes",
								"--cross-file-rename",
								"--clang-tidy-checks=-*,bugprone-*,cert-*,clang-analyzer-*,cppcoreguidelines-*,misc-*,modernize-*,performance-*,portability-*,readability-*",
							},
						}
					elseif server_name == 'omnisharp' then
						require("lspconfig")[server_name].setup {
							cmd = {
								"omnisharp",
								"--languageserver",
								"--hostPID",
								tostring(vim.fn.getpid()),
							},
						}
					else
						require("lspconfig")[server_name].setup {}
					end
				end
			}
		end
	},
}
