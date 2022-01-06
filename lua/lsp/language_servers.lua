-- Setup lspconfig.
<<<<<<< HEAD
local root_pattern = require('lspconfig').util.root_pattern
=======
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
local servers = {
  'html',
  'cssls',
  'emmet_ls',
  'fsautocomplete',
  'hls',
  'jsonls',
}
for _,server in ipairs(servers) do
  require'lspconfig'[server].setup{
    capabilities = capabilities
  }
end
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.eslint.setup{
  root_dir = function() return vim.loop.cwd() end
}

require'lspconfig'.tsserver.setup{
  filetypes = { 'javascript', 'typescript', 'typescriptreact' },
<<<<<<< HEAD
  root_dir = root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git") 
=======
  root_dir = function() return vim.loop.cwd() end
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
}

require'lspconfig'.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
