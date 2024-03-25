return {
	"neovim/nvim-lspconfig",
	dependencies = {

		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			{
				"williamboman/mason.nvim",
				opts = {},
			},
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
							enable_import_completion = true,
							enable_decompilation_support = true,
							orgenize_imports_on_format = true,
							enable_roslyn_analyzers = true,
						}
						vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", { desc = "Hover" })
						vim.keymap.set("n", "gR", "<cmd>lua require('omnisharp_extended').lsp_references()<cr>",
							{ desc = "References" })
						vim.keymap.set("n", "gd", "<cmd>lua require('omnisharp_extended').lsp_definition()<cr>",
							{ desc = "Go to Definition" })
						vim.keymap.set("n", "gi", "<cmd>lua require('omnisharp_extended').lsp_implementation()<cr>",
							{ desc = "Go to Implementation" })
					else
						require("lspconfig")[server_name].setup {}
					end
				end
			}
		end
	},
}
