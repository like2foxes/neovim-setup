return {
	'hrsh7th/nvim-cmp', -- Required
	config = function()
		local cmp = require('cmp')
		local luasnip = require('luasnip')
		local has_words_before = function()
			unpack = unpack or table.unpack
			local line, col = unpack(vim.api.nvim_win_get_cursor(0))
			return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
		end

		local lspkind = require('lspkind')
		cmp.setup({
			formatting = {
				format = lspkind.cmp_format({
					mode = 'symbol', -- show only symbol annotations
					maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
					ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
				})
			},

			mapping = cmp.mapping.preset.insert({
				-- `Enter` key to confirm completion
				['<CR>'] = cmp.mapping.confirm({ select = false }),

				-- Ctrl+Space to trigger completion menu
				['<C-Space>'] = cmp.mapping.complete(),
				      ['<C-e>'] = cmp.mapping.abort(),
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				-- Navigate between snippet placeholder
				["<Tab>"] = cmp.mapping(function(fallback)
					if luasnip.expand_or_jumpable() then
						luasnip.expand_or_jump()
					elseif has_words_before() then
						cmp.complete()
					else
						fallback()
					end
				end, { "i", "s" }),

				["<S-Tab>"] = cmp.mapping(function(fallback)
					if luasnip.jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s" }),
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
				{ name = 'nvim_lsp_signature_help' },
				{ name = 'nvim_lua' },
			}, {
				{ name = 'buffer' },
				{ name = 'calc' },
				{ name = 'emoji' },
			}),
		})

		cmp.setup.cmdline({ '/', '?' }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp_document_symbol' }
			}, {
				{ name = 'buffer' },
			})
		})

		cmp.setup.cmdline(':', {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = 'path' }
			}, {
				{ name = 'cmdline' }
			})
		})
	end,
	dependencies = {
		{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
		{ 'L3MON4D3/LuaSnip' },
		{ "rafamadriz/friendly-snippets" },
		{ 'hrsh7th/cmp-buffer' },
		{ 'hrsh7th/cmp-path' },
		{ 'hrsh7th/cmp-cmdline' },
		{ 'hrsh7th/cmp-calc' },
		{ 'hrsh7th/cmp-nvim-lsp-document-symbol' },
		{ 'hrsh7th/cmp-nvim-lsp-signature-help' },
		{ 'hrsh7th/cmp-emoji' },
		{ 'hrsh7th/cmp-nvim-lua' },
		{ 'onsails/lspkind.nvim' },
	}

}
