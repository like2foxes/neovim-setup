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
			h = { "<cmd>noh<cr>", "Remove [H]ighlights" },
			p = { "<cmd>SessionManager load_session<cr>", "Find [P]rojects" },
			e = { function() require("oil").toggle_float(vim.fn.getcwd()) end, "File [E]xplorer" },
			n = { function() require('telescope').extensions.notify.notify() end, "Find [N]otifications" },
			o = { "<cmd>Oil<cr>", "[O]pen Oil in Directory" },
			z = { "<cmd>ZenMode<cr>", "[Z]en Mode" },
			c = {
				name = "[C]ode",
				f = { vim.lsp.buf.format, "[F]ormat Buffer" },
				c = {
					name = "[C]opilot",
					d = { "<cmd>Copilot disable<cr>", "[D]isable" },
					e = { "<cmd>Copilot enable<cr>", "[E]nable" },
				}
			},
			t = {
				name = "[T]rouble",
				t = { function() require("trouble").toggle() end, "[T]oggle" },
				w = { function() require("trouble").open("workspace_diagnostics") end, "[W]orkspace diagnostics" },
				d = { function() require("trouble").open("document_diagnostics") end, "[D]ocument diagnostics" },
				q = { function() require("trouble").open("quickfix") end, "[Q]uickfix" },
				l = { function() require("trouble").open("loclist") end, "[L]oclist" },
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
				c = { "<cmd>GpChatNew<cr>", "New Chat" },
				t = { "<cmd>GpChatToggle<cr>", "Toggle Popup Chat" },
				f = { "<cmd>GpChatFinder<cr>", "Chat Finder" },

				["<C-x>"] = { "<cmd>GpChatNew split<cr>", "New Chat split" },
				["<C-v>"] = { "<cmd>GpChatNew vsplit<cr>", "New Chat vsplit" },
				["<C-t>"] = { "<cmd>GpChatNew tabnew<cr>", "New Chat tabnew" },

				r = { "<cmd>GpRewrite<cr>", "Inline Rewrite" },
				a = { "<cmd>GpAppend<cr>", "Append" },
				b = { "<cmd>GpPrepend<cr>", "Prepend" },
				e = { "<cmd>GpEnew<cr>", "Enew" },
				p = { "<cmd>GpPopup<cr>", "Popup" },
				s = { "<cmd>GpStop<cr>", "Stop" },

				-- optional Whisper commands
				w = { "<cmd>GpWhisper<cr>", "Whisper" },
				R = { "<cmd>GpWhisperRewrite<cr>", "Whisper Inline Rewrite" },
				A = { "<cmd>GpWhisperAppend<cr>", "Whisper Append" },
				B = { "<cmd>GpWhisperPrepend<cr>", "Whisper Prepend" },
				E = { "<cmd>GpWhisperEnew<cr>", "Whisper Enew" },
				P = { "<cmd>GpWhisperPopup<cr>", "Whisper Popup" },
			},
		}, {
			prefix = "<leader>"
		})
	end
}
