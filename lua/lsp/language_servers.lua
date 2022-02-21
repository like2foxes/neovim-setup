-- Setup lspconfig.
local root_pattern = require('lspconfig').util.root_pattern
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
local servers = {
  'html',
  'cssls',
  'clangd',
  'emmet_ls',
  'fsautocomplete',
  'omnisharp',
  'jsonls',
  'elmls'
}

local on_attach = function (client)
  require('completion').on_attach(client)
end

for _,server in ipairs(servers) do
  require'lspconfig'[server].setup{
    capabilities = capabilities,
    on_attach = require'completion'.on_attach
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
  root_dir = root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")
}


require'lspconfig'.rust_analyzer.setup({
  on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importGranularity = "module",
                importPrefix = "by_self",
            },
            cargo = {
                loadOutDirsFromCheck = true
            },
            procMacro = {
                enable = true
            },
        }
    }
})

require'lspconfig'.hls.setup({
  on_attach = on_attach,
  settings = {
    haskell = {
      hlintOn = true,
      formattingProvider = "fourmolu"
    }
  }
})

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
