return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		local wk = require("which-key")
		wk.register({
			m = { "<cmd>Alpha<cr>", "Alpha [M]enu" },
			f = { "<cmd>Telescope find_files<cr>", "Find [F]ile" },
			g = { "<cmd>Telescope live_grep<cr>", "[G]rep" },
			s = { "<cmd>Telescope treesitter<cr>", "Find [S]ymbol" },
			b = { "<cmd>Telescope buffers<cr>", "Find [B]uffers" },
			d = { "<cmd>Telescope diagnostics bufnr=0<cr>", "Document [D]iagnostics" },
			h = { "<cmd>noh<cr>", "Remove [H]ighlights" },
			p = { "<cmd>SessionManager load_session<cr>", "Find [P]rojects" },
			e = { function() require("oil").toggle_float(vim.fn.getcwd()) end, "File [E]xplorer" },
			o = { "<cmd>Oil<cr>", "[O]pen Oil in Directory" },
			c = {
				name = "[C]ode",
				f = {
					function()
						if vim.bo.filetype == "templ" then
							local bufnr = vim.api.nvim_get_current_buf()
							local filename = vim.api.nvim_buf_get_name(bufnr)
							local cmd = "templ fmt " .. vim.fn.shellescape(filename)
							vim.fn.jobstart(cmd, {
								on_exit = function()
									if vim.api.nvim_get_current_buf() == bufnr then
										vim.cmd("e!")
									end
								end
							})
						else
							vim.lsp.buf.format()
						end
					end
					, "[F]ormat Buffer"
				},
				c = {
					name = "[C]opilot",
					d = { "<cmd>Copilot disable<cr>", "[D]isable" },
					e = { "<cmd>Copilot enable<cr>", "[E]nable" },
				}
			},
			l = {
				name = "[L]SP",
				s = { function() require("telescope.builtin").lsp_dynamic_workspace_symbols() end, "Workspace [S]ymbols" },
				a = { function() require("telescope.builtin").lsp_code_actions() end, "Code Code [A]ctions" },
				c = { function() require("telescope.builtin").lsp_incoming_calls() end, "Incoming [C]alls" },
				o = { function() require("telescope.builtin").lsp_outgoing_calls() end, "Outgoing [O]calls" },
				d = { function() require("telescope.builtin").lsp_definitions() end, "[D]efinitions" },
				i = { function() require("telescope.builtin").lsp_implementations() end, "[I]mplementations" },
				t = { function() require("telescope.builtin").lsp_type_definitions() end, "Type [T]efinitions" },
				r = { function() require("telescope.builtin").lsp_references() end, "[R]eferences" },
			},
			q = {
				name = "[Q]uickfix",
				q = { "<cmd>Telescope quickfix theme=dropdown<cr>", "[Q]uickfix" },
				d = { function() vim.diagnostic.setqflist() end, "[D]iagnostics" },

			},
		}, {
			prefix = "<leader>"
		})
	end
}
