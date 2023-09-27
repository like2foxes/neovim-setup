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
			h = { "<cmd>noh<cr>", "Remove [H]ighlights"},
			p = { "<cmd>SessionManager load_session<cr>", "Find [P]rojects" },
			e = { function() require("oil").toggle_float(vim.fn.getcwd()) end, "File [E]xplorer" },
			n = { function() require('telescope').extensions.notify.notify() end, "Find [N]otifications" },
			z = { "<cmd>ZenMode<cr>", "[Z]en Mode" },
			c = {
				name = "[C]ode",
				f = { vim.lsp.buf.format, "[F]ormat Buffer" },
			},
			t = {
				name = "[T]rouble",
				t = { function() require("trouble").open() end, "[T]oggle" },
				w = { function() require("trouble").open("workspace_diagnostics") end, "[W]orkspace diagnostics" },
				d = { function() require("trouble").open("document_diagnostics") end, "[D]ocument diagnostics" },
				q = { function() require("trouble").open("quickfix") end, "[Q]uickfix" },
				l = { function() require("trouble").open("loclist") end, "[L]oclist" },
			}
		}, {
			prefix = "<leader>"
		})
	end
}
