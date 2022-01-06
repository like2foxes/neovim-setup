-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
<<<<<<< HEAD
local package_path_str = "/home/shai/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/shai/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/shai/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/shai/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/shai/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
=======
local package_path_str = "/home/shaic/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/shaic/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/shaic/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/shaic/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/shaic/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/LuaSnip",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/LuaSnip",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/cmp-buffer",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/cmp-buffer",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/cmp-path",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/cmp-path",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox-material.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/gruvbox-material.nvim",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/gruvbox-material.nvim",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/wittyjudge/gruvbox-material.nvim"
  },
  ["indent-guides.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/indent-guides.nvim",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/indent-guides.nvim",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/glepnir/indent-guides.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/lualine.nvim",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/lualine.nvim",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/nvim-cmp",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/nvim-cmp",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/packer.nvim",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/packer.nvim",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/plenary.nvim",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/plenary.nvim",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/telescope.nvim",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/telescope.nvim",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["which-key.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/shai/.local/share/nvim/site/pack/packer/start/which-key.nvim",
=======
    path = "/home/shaic/.local/share/nvim/site/pack/packer/start/which-key.nvim",
>>>>>>> 13dacb65746eb784599a174f285a51f00382eeba
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
