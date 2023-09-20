return {
	{
		'rmagatti/auto-session',
		opts = {}
	},
	{
		'rmagatti/session-lens',
		dependencies = { 'rmagatti/auto-session', 'nvim-telescope/telescope.nvim' }
	}
}
