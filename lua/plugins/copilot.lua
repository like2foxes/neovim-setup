return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	opts = {
		suggestion = {
			auto_trigger = true,
			debounce = 300,
			keymap = {
				accept = "<M-l>",
				next = "<M-j>",
				prev = "<M-k>",
				dismiss = "<M-d>",
			},
		},
		filetypes = {
			yaml = true,
			markdown = true,
			gitcommit = true,
			gitrebase = true,
		},
	}
}
