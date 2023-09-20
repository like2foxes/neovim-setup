return {
	'goolord/alpha-nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		local alpha = require 'alpha'
		local startify = require 'alpha.themes.startify'
		startify.section.header.val = {
			[[   ___    | |_      __ _      (_)      ___     _ _      __ __     (_)     _ __   ]],
			[[  (_-<    | ' \    / _` |     | |     |___|   | ' \     \ V /     | |    | '  \  ]],
			[[  /__/_   |_||_|   \__,_|    _|_|_    _____   |_||_|    _\_/_    _|_|_   |_|_|_| ]],
			[[_|"""""| _|"""""| _|"""""| _|"""""| _|     | _|"""""| _|"""""| _|"""""| _|"""""| ]],
			[["`-0-0-' "`-0-0-' "`-0-0-' "`-0-0-' "`-0-0-' "`-0-0-' "`-0-0-' "`-0-0-' "`-0-0-']],
		}
		startify.section.top_buttons.val = {
			startify.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			startify.button("f", "⎘  Find file", ":Telescope find_files<CR>"),
			startify.button("g", "⌨  Grep", ":Telescope live_grep<CR>"),
			startify.button("l", "⌛ Last session", ":SessionManager load_last_session<CR>"),
			startify.button("s", "⌖  Select session", ":SessionManager load_session<CR>"),
		}
		-- disable MRU
		startify.section.mru.val = { { type = "padding", val = 0 } }
		-- disable MRU cwd
		startify.section.mru_cwd.val = { { type = "padding", val = 0 } }
		-- disable nvim_web_devicons
		startify.nvim_web_devicons.enabled = false
		-- startify.nvim_web_devicons.highlight = false
		-- startify.nvim_web_devicons.highlight = 'Keyword'
		--
		startify.section.bottom_buttons.val = {
			startify.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
		}
		startify.section.footer.val = {
			{ type = "text", val = "footer" },
		}
		-- ignore filetypes in MRU

		startify.mru_opts.ignore = function(path, ext)
			return
				(string.find(path, "COMMIT_EDITMSG"))
				or (vim.tbl_contains(default_mru_ignore, ext))
		end
		alpha.setup(startify.config)
	end
}
