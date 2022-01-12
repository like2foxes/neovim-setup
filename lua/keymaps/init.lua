local function map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
      if opts then options = vim.tbl_extend('force', options, opts) end
      mode:gsub(".", function(c)
        vim.api.nvim_set_keymap(c, lhs, rhs, options)
      end)
end

map('','<Space>','<NOP>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('icv','jk','<Esc>')
map('icv','kj','<Esc>')
map('n','<C-h>','<C-w>h')
map('n','<C-j>','<C-w>j')
map('n','<C-k>','<C-w>k')
map('n','<C-l>','<C-w>l')
map('n','L',':BufferLineCycleNext<CR>')
map('n','H',':BufferLineCyclePrev<CR>')
map('n','<Leader>e',':NvimTreeToggle<CR>')
map('n','<Leader>r',':NvimTreeRefresh<CR>')
map('n','<Leader>n',':NvimTreeFindFile<CR>')
map('v','<','<gv')
map('v','>','>gv')
map('n','<C-s>',':wa<CR>')
map('n','<C-q>',':wqa<CR>')
