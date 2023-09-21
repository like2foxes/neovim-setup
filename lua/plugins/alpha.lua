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
			dashboard.button("e ", "📄 New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f ", "🔭 Find file", ":Telescope find_files<CR>"),
			dashboard.button("r ", "📂 Recent files", ":Telescope oldfiles<CR>"),
			dashboard.button("g ", "🔎 Grep", ":Telescope live_grep<CR>"),
			dashboard.button("d ", "💿 Last session (current dir)", ":SessionManager load_current_dir_session<CR>"),
			dashboard.button("l ", "📀 Last session", ":SessionManager load_last_session<CR>"),
			dashboard.button("s ", "💾 Select session", ":SessionManager load_session<CR>"),
			dashboard.button("c ", "💻 Open configuration", ":cd ~/.config/nvim/<CR>:e ~/.config/nvim/<CR>"),
			dashboard.button("q ", "👋 Quit NVIM", ":qa<CR>"),
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
