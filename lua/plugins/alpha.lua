return {
	'goolord/alpha-nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		local alpha = require 'alpha'
		local dashboard = require 'alpha.themes.dashboard'
		dashboard.section.header.val = {
			[[╔════════════════════════════════════════════════════════════════════════════════════════════════════════╗]],
			[[║ ░██╗░░░░░░░██╗███████╗██╗░░░░░░█████╗░░█████╗░███╗░░░███╗███████╗    ░██████╗██╗░░██╗░█████╗░██╗░░░    ║]],
			[[║ ░██║░░██╗░░██║██╔════╝██║░░░░░██╔══██╗██╔══██╗████╗░████║██╔════╝    ██╔════╝██║░░██║██╔══██╗██║░░░    ║]],
			[[║ ░╚██╗████╗██╔╝█████╗░░██║░░░░░██║░░╚═╝██║░░██║██╔████╔██║█████╗░░    ╚█████╗░███████║███████║██║░░░    ║]],
			[[║ ░░████╔═████║░██╔══╝░░██║░░░░░██║░░██╗██║░░██║██║╚██╔╝██║██╔══╝░░    ░╚═══██╗██╔══██║██╔══██║██║██╗    ║]],
			[[║ ░░╚██╔╝░╚██╔╝░███████╗███████╗╚█████╔╝╚█████╔╝██║░╚═╝░██║███████╗    ██████╔╝██║░░██║██║░░██║██║╚█║    ║]],
			[[║ ░░░╚═╝░░░╚═╝░░╚══════╝╚══════╝░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚══════╝    ╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░╚╝    ║]],
			[[║                                                                                                        ║]],
			[[║ ███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗    ░█████╗░░██╗░░░░░░░██╗░█████╗░██╗████████╗░██████╗ ║]],
			[[║ ████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║    ██╔══██╗░██║░░██╗░░██║██╔══██╗██║╚══██╔══╝██╔════╝ ║]],
			[[║ ██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║    ███████║░╚██╗████╗██╔╝███████║██║░░░██║░░░╚█████╗░ ║]],
			[[║ ██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║    ██╔══██║░░████╔═████║░██╔══██║██║░░░██║░░░░╚═══██╗ ║]],
			[[║ ██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║    ██║░░██║░░╚██╔╝░╚██╔╝░██║░░██║██║░░░██║░░░██████╔╝ ║]],
			[[║ ╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝    ╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░╚═╝░░╚═╝╚═╝░░░╚═╝░░░╚═════╝░ ║]],
			[[╚════════════════════════════════════════════════════════════════════════════════════════════════════════╝]],
		}
		dashboard.section.buttons.val = {
			dashboard.button("n ", "  [n]ew file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f ", "󰮗  [f]iles", ":Telescope find_files<CR>"),
			dashboard.button("r ", "󱋡  [r]ecent files", ":Telescope oldfiles<CR>"),
			dashboard.button("g ", "  [g]rep", ":Telescope live_grep<CR>"),
			dashboard.button("l ", "󱑍  [l]ast session", ":SessionManager load_last_session<CR>"),
			dashboard.button("d ", "󰔠  [d]irectory session", ":SessionManager load_current_dir_session<CR>"),
			dashboard.button("s ", "󰪶  [s]elect session", ":SessionManager load_session<CR>"),
			dashboard.button("h ", "✙  [h]ealth check", ":checkhealth<CR>"),
			dashboard.button("c ", "  [c]onfiguration", ":cd ~/.config/nvim/<CR>:e ~/.config/nvim/<CR>"),
			dashboard.button("q ", "󰩈  [q]uit neovim", ":qa<CR>"),
		}
		local handle = io.popen('fortune ║ cowsay')
		if handle then
			local fortune = handle:read("*a")
			handle:close()
			dashboard.section.footer.val = fortune
		end

		dashboard.config.opts.noautocmd = true

		vim.cmd [[autocmd User AlphaReady echo 'ready']]

		alpha.setup(dashboard.config)
	end
}
