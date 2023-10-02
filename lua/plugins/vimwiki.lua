return {
	"vimwiki/vimwiki",
	branch = "dev",
	init = function()
		vim.g.vimwiki_list = {
			{
				template_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/vimwiki/autoload/",
				syntax = "markdown",
				ext = ".md",
				path = "~/documents/wiki",
			},
		}
		vim.g.vimwiki_global_ext = 0
	end,
}
