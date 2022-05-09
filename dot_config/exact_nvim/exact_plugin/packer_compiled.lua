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
local package_path_str = "/home/tjquillan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/tjquillan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/tjquillan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/tjquillan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/tjquillan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["Comment.nvim"] = {
    after_files = { "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/Comment.nvim/after/plugin/Comment.lua" },
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    keys = { { "", "gcc" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    after = { "cmp_luasnip" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    after = { "nvim-lspconfig" },
    after_files = { "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    after_files = { "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n‘\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\21filetype_exclude\1\f\0\0\thelp\rterminal\nalpha\vpacker\flspinfo\20TelescopePrompt\21TelescopeResults\18lsp-installer\rNvimTree\fTrouble\5\1\0\4\28show_first_indent_level\2#show_trailing_blankline_indent\1\25show_current_context\2\29blankline_use_treesitter\2\nsetup\21indent_blankline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nÙ\1\0\1\r\0\r\1#6\1\0\0009\1\1\0019\1\2\1B\1\1\0026\2\3\0\18\4\1\0B\2\2\2\v\2\0\0X\2\1ÄL\0\2\0006\2\4\0\18\4\1\0B\2\2\4X\5\18Ä9\a\5\0069\a\6\a\15\0\a\0X\b\14Ä6\b\0\0009\b\a\b9\b\b\b\18\n\a\0\18\v\0\0B\b\3\2\b\b\0\0X\b\6Ä6\b\t\0009\b\n\b'\n\v\0\18\v\0\0009\f\f\6D\b\4\0E\5\3\3R\5ÏL\0\2\0\tname\f%s (%s)\vformat\vstring\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\bvim˛ˇˇˇ\31ﬁ\1\1\0\a\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0005\5\n\0003\6\v\0=\6\f\5>\5\2\4=\4\r\3=\3\14\2B\0\2\1K\0\1\0\rsections\14lualine_x\bfmt\0\1\2\0\0\rfiletype\1\2\0\0\rencoding\14lualine_c\1\0\0\1\3\0\0\rfilename\17lsp_progress\foptions\1\0\0\1\0\1\ntheme\fonedark\nsetup\flualine\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nÔ\2\0\0\n\0\21\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\0016\0\0\0'\2\f\0B\0\2\0026\1\0\0'\3\r\0B\1\2\0029\2\14\1\18\4\2\0009\2\15\2'\5\16\0009\6\17\0005\b\19\0005\t\18\0=\t\20\bB\6\2\0A\2\2\1K\0\1\0\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\1\tjava\1\1\2\0\0\vstring\21disable_filetype\1\0\1\rcheck_ts\2\1\2\0\0\20TelescopePrompt\nsetup\19nvim-autopairs\frequire\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-nvim-lua", "cmp_luasnip", "cmp-nvim-lsp", "nvim-autopairs", "cmp-buffer", "cmp-cmdline", "cmp-path" },
    loaded = true,
    only_config = true
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n‚\4\0\0\r\0\22\0,5\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0=\0\5\0035\4\a\0005\5\6\0=\5\b\4=\4\t\3B\1\2\0016\1\n\0009\1\v\0019\1\f\0019\1\r\1B\1\1\0026\2\1\0'\4\14\0B\2\2\0029\2\15\2\18\4\1\0B\2\2\2\18\1\2\0006\2\1\0'\4\16\0B\2\2\0026\3\1\0'\5\17\0B\3\2\0026\4\18\0\18\6\0\0B\4\2\4H\a\aÄ8\t\b\0039\t\3\t5\v\20\0009\f\19\2=\f\19\v=\1\21\vB\t\2\1F\a\3\3R\a˜K\0\1\0\17capabilities\1\0\0\14on_attach\npairs\14lspconfig plugins.config.lsp.handlers\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\aui\nicons\1\0\0\1\0\3\23server_uninstalled\b‚úó\19server_pending\b‚ûú\21server_installed\b‚úì\21ensure_installed\1\0\0\nsetup\23nvim-lsp-installer\frequire\1\17\0\0\vbashls\ncmake\vclangd\14omnisharp\ncssls\ngopls\thtml\njdtls\vjsonls\27kotlin_language_server\16sumneko_lua\18powershell_es\fpyright\18rust_analyzer\rtsserver\veslint\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n◊\3\0\0\5\0\22\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\r\0005\4\f\0=\4\14\3=\3\15\0025\3\17\0005\4\16\0=\4\18\0035\4\19\0=\4\20\3=\3\21\2B\0\2\1K\0\1\0\rrenderer\nicons\1\0\1\18webdev_colors\2\19indent_markers\1\0\0\1\0\1\venable\2\factions\14open_file\1\0\0\1\0\1\18resize_window\2\bgit\1\0\2\venable\1\vignore\1\tview\1\0\3\tside\tleft\nwidth\3\25\21hide_root_folder\2\24update_focused_file\1\0\2\venable\2\15update_cwd\1\ffilters\1\0\6\15update_cwd\2\18hijack_cursor\2'hijack_unnamed_buffer_when_opening\1\16open_on_tab\1\17hijack_netrw\2\18disable_netrw\2\1\0\1\rdotfiles\1\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-rainbow", "nvim-ts-autotag", "nvim-autopairs" },
    commands = { "TSUpdate" },
    config = { "\27LJ\2\nª\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\fautotag\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    config = { "\27LJ\2\nv\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\0\1\0\2\venable\2\18extended_mode\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    after = { "lualine.nvim" },
    loaded = true,
    only_config = true
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15rust-tools\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["startuptime.vim"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/startuptime.vim",
    url = "https://github.com/tweekmonster/startuptime.vim"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    config = { "\27LJ\2\nN\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\14ui-select\19load_extension\14telescope\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    after = { "telescope-ui-select.nvim", "telescope-fzf-native.nvim" },
    commands = { "Telescope" },
    config = { "\27LJ\2\nÁ\2\0\0\n\0\20\1\0316\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\v\0005\5\t\0005\6\a\0005\a\5\0009\b\4\1=\b\6\a=\a\b\6=\6\n\5=\5\f\0045\5\14\0005\6\r\0=\6\15\0054\6\3\0006\a\0\0'\t\16\0B\a\2\0029\a\17\a4\t\0\0B\a\2\0?\a\0\0=\6\18\5=\5\19\4B\2\2\1K\0\1\0\15extensions\14ui-select\17get_dropdown\21telescope.themes\bfzf\1\0\0\1\0\4\nfuzzy\2\14case_mode\15smart_case\28override_generic_sorter\2\25override_file_sorter\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\n<esc>\1\0\0\nclose\nsetup\22telescope.actions\14telescope\frequire\3ÄÄ¿ô\4\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-sleuth"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tjquillan/.local/share/nvim/site/pack/packer/opt/vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^Comment"] = "Comment.nvim",
  ["^nvim%-treesitter"] = "nvim-treesitter",
  ["^nvim%-web%-devicons"] = "nvim-web-devicons",
  ["^telescope"] = "telescope.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: nvim-tree.lua
time([[Setup for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nç\1\0\0\5\0\b\0\0156\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0B\0\4\1K\0\1\0\24:NvimTreeFocus <CR>\14<leader>e\25:NvimTreeToggle <CR>\n<C-n>\6n\bset\vkeymap\bvim\0", "setup", "nvim-tree.lua")
time([[Setup for nvim-tree.lua]], false)
time([[packadd for nvim-tree.lua]], true)
vim.cmd [[packadd nvim-tree.lua]]
time([[packadd for nvim-tree.lua]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14live_grep\22telescope.builtin\frequireA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\fbuffers\22telescope.builtin\frequireC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14help_tags\22telescope.builtin\frequire¸\1\1\0\a\0\r\0\0316\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\5\0'\6\6\0B\4\2\0A\0\2\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0003\4\b\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0003\4\n\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\v\0003\4\f\0B\0\4\1K\0\1\0\0\15<leader>fh\0\15<leader>fb\0\15<leader>fg5plugins.config.telescope.functions.project_files\frequire\15<leader>ff\6n\bset\vkeymap\bvim\0", "setup", "telescope.nvim")
time([[Setup for telescope.nvim]], false)
-- Setup for: Comment.nvim
time([[Setup for Comment.nvim]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\28toggle_current_linewise\16Comment.api\frequireh\0\0\4\0\6\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\3\0009\2\4\0029\2\5\2B\2\1\0A\0\0\1K\0\1\0\15visualmode\afn\bvim\23toggle_linewise_op\16Comment.api\frequireb\1\0\5\0\b\0\0156\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0003\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\4\0003\4\a\0B\0\4\1K\0\1\0\0\6v\0\14<leader>/\6n\bset\vkeymap\bvim\0", "setup", "Comment.nvim")
time([[Setup for Comment.nvim]], false)
-- Setup for: nvim-lspconfig
time([[Setup for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\vborder\frounded\15open_float\15diagnostic\bvimJ\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\vborder\frounded\14goto_prev\15diagnostic\bvimJ\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\vborder\frounded\14goto_next\15diagnostic\bvimÔ\4\1\0\a\0\27\0E6\0\0\0009\0\1\0009\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\0\0009\0\6\0009\0\a\0006\1\0\0009\1\6\0019\1\t\0016\3\0\0009\3\6\0039\3\a\0039\3\n\0035\4\v\0B\1\3\2=\1\b\0006\0\0\0009\0\6\0009\0\a\0006\1\0\0009\1\6\0019\1\t\0016\3\0\0009\3\6\0039\3\a\0039\3\r\0035\4\14\0B\1\3\2=\1\f\0005\0\15\0006\1\0\0009\1\16\0019\1\17\1'\3\18\0'\4\19\0003\5\20\0\18\6\0\0B\1\5\0016\1\0\0009\1\16\0019\1\17\1'\3\18\0'\4\21\0003\5\22\0\18\6\0\0B\1\5\0016\1\0\0009\1\16\0019\1\17\1'\3\18\0'\4\23\0003\5\24\0\18\6\0\0B\1\5\0016\1\0\0009\1\16\0019\1\17\1'\3\18\0'\4\25\0006\5\0\0009\5\1\0059\5\26\5\18\6\0\0B\1\5\1K\0\1\0\15setloclist\14<leader>q\0\a]d\0\a[d\0\agl\6n\bset\vkeymap\1\0\1\vsilent\2\1\0\1\vborder\frounded\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\frounded\nhover\twith\23textDocument/hover\rhandlers\blsp\nfloat\1\0\6\vheader\5\14focusable\1\vsource\valways\nstyle\fminimal\vborder\frounded\vprefix\5\1\0\4\14underline\2\21update_in_insert\2\17virtual_text\1\18severity_sort\2\vconfig\15diagnostic\bvim\0", "setup", "nvim-lspconfig")
time([[Setup for nvim-lspconfig]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire¨\1\0\1\4\1\6\0\0226\1\0\0'\3\1\0B\1\2\2-\2\0\0009\2\2\2B\2\1\2\15\0\2\0X\3\4Ä-\2\0\0009\2\3\2B\2\1\1X\2\tÄ9\2\4\1B\2\1\2\15\0\2\0X\3\3Ä9\2\5\1B\2\1\1X\2\2Ä\18\2\0\0B\2\1\1K\0\1\0\0¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisible\fluasnip\frequire†\1\0\1\5\1\6\0\0246\1\0\0'\3\1\0B\1\2\2-\2\0\0009\2\2\2B\2\1\2\15\0\2\0X\3\4Ä-\2\0\0009\2\3\2B\2\1\1X\2\vÄ9\2\4\1)\4ˇˇB\2\2\2\15\0\2\0X\3\4Ä9\2\5\1)\4ˇˇB\2\2\1X\2\2Ä\18\2\0\0B\2\1\1K\0\1\0\0¿\tjump\rjumpable\21select_prev_item\fvisible\fluasnip\frequireì\6\1\0\v\0.\0h6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0039\4\b\0009\4\t\0049\4\n\0045\6\f\0009\a\b\0009\a\v\a)\t¸ˇB\a\2\2=\a\r\0069\a\b\0009\a\v\a)\t\4\0B\a\2\2=\a\14\0069\a\b\0009\a\15\aB\a\1\2=\a\16\0069\a\b\0009\a\17\aB\a\1\2=\a\18\0069\a\b\0009\a\19\a5\t\22\0009\n\20\0009\n\21\n=\n\23\tB\a\2\2=\a\24\0069\a\b\0003\t\25\0005\n\26\0B\a\3\2=\a\27\0069\a\b\0003\t\28\0005\n\29\0B\a\3\2=\a\30\6B\4\2\2=\4\b\0039\4\31\0009\4 \0044\6\5\0005\a!\0>\a\1\0065\a\"\0>\a\2\0065\a#\0>\a\3\0065\a$\0>\a\4\0064\a\3\0005\b%\0>\b\1\aB\4\3\2=\4 \3B\1\2\0019\1\2\0009\1&\1'\3'\0005\4(\0009\5\b\0009\5\t\0059\5&\5B\5\1\2=\5\b\0044\5\3\0005\6)\0>\6\1\5=\5 \4B\1\3\0019\1\2\0009\1&\1'\3*\0005\4+\0009\5\b\0009\5\t\0059\5&\5B\5\1\2=\5\b\0049\5\31\0009\5 \0054\a\3\0005\b,\0>\b\1\a4\b\3\0005\t-\0>\t\1\bB\5\3\2=\5 \4B\1\3\0012\0\0ÄK\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\rnvim_lua\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n◊\3\0\0\5\0\22\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\r\0005\4\f\0=\4\14\3=\3\15\0025\3\17\0005\4\16\0=\4\18\0035\4\19\0=\4\20\3=\3\21\2B\0\2\1K\0\1\0\rrenderer\nicons\1\0\1\18webdev_colors\2\19indent_markers\1\0\0\1\0\1\venable\2\factions\14open_file\1\0\0\1\0\1\18resize_window\2\bgit\1\0\2\venable\1\vignore\1\tview\1\0\3\tside\tleft\nwidth\3\25\21hide_root_folder\2\24update_focused_file\1\0\2\venable\2\15update_cwd\1\ffilters\1\0\6\15update_cwd\2\18hijack_cursor\2'hijack_unnamed_buffer_when_opening\1\16open_on_tab\1\17hijack_netrw\2\18disable_netrw\2\1\0\1\rdotfiles\1\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\nä\1\0\0\6\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\5\0005\5\4\0=\5\6\4=\4\a\3B\1\2\0019\1\b\0B\1\1\1K\0\1\0\tload\15highlights\16rainbowcol1\1\0\0\1\0\1\afg\n$cyan\1\0\1\nstyle\tdark\nsetup\fonedark\frequire\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd cmp-path ]]
vim.cmd [[ packadd cmp-nvim-lsp ]]
vim.cmd [[ packadd nvim-lspconfig ]]

-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\n‚\4\0\0\r\0\22\0,5\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0=\0\5\0035\4\a\0005\5\6\0=\5\b\4=\4\t\3B\1\2\0016\1\n\0009\1\v\0019\1\f\0019\1\r\1B\1\1\0026\2\1\0'\4\14\0B\2\2\0029\2\15\2\18\4\1\0B\2\2\2\18\1\2\0006\2\1\0'\4\16\0B\2\2\0026\3\1\0'\5\17\0B\3\2\0026\4\18\0\18\6\0\0B\4\2\4H\a\aÄ8\t\b\0039\t\3\t5\v\20\0009\f\19\2=\f\19\v=\1\21\vB\t\2\1F\a\3\3R\a˜K\0\1\0\17capabilities\1\0\0\14on_attach\npairs\14lspconfig plugins.config.lsp.handlers\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\aui\nicons\1\0\0\1\0\3\23server_uninstalled\b‚úó\19server_pending\b‚ûú\21server_installed\b‚úì\21ensure_installed\1\0\0\nsetup\23nvim-lsp-installer\frequire\1\17\0\0\vbashls\ncmake\vclangd\14omnisharp\ncssls\ngopls\thtml\njdtls\vjsonls\27kotlin_language_server\16sumneko_lua\18powershell_es\fpyright\18rust_analyzer\rtsserver\veslint\0", "config", "nvim-lspconfig")

vim.cmd [[ packadd cmp-buffer ]]
vim.cmd [[ packadd cmp-cmdline ]]
vim.cmd [[ packadd cmp-nvim-lua ]]
vim.cmd [[ packadd lualine.nvim ]]

-- Config for: lualine.nvim
try_loadstring("\27LJ\2\nÙ\1\0\1\r\0\r\1#6\1\0\0009\1\1\0019\1\2\1B\1\1\0026\2\3\0\18\4\1\0B\2\2\2\v\2\0\0X\2\1ÄL\0\2\0006\2\4\0\18\4\1\0B\2\2\4X\5\18Ä9\a\5\0069\a\6\a\15\0\a\0X\b\14Ä6\b\0\0009\b\a\b9\b\b\b\18\n\a\0\18\v\0\0B\b\3\2\b\b\0\0X\b\6Ä6\b\t\0009\b\n\b'\n\v\0\18\v\0\0009\f\f\6D\b\4\0E\5\3\3R\5ÏL\0\2\0\tname\f%s (%s)\vformat\vstring\nindex\afn\14filetypes\vconfig\vipairs\tnext\23get_active_clients\blsp\bvim˛ˇˇˇ\31ﬁ\1\1\0\a\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0005\5\n\0003\6\v\0=\6\f\5>\5\2\4=\4\r\3=\3\14\2B\0\2\1K\0\1\0\rsections\14lualine_x\bfmt\0\1\2\0\0\rfiletype\1\2\0\0\rencoding\14lualine_c\1\0\0\1\3\0\0\rfilename\17lsp_progress\foptions\1\0\0\1\0\1\ntheme\fonedark\nsetup\flualine\frequire\0", "config", "lualine.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'startuptime.vim'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSUpdate lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSUpdate", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> gcc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gcc", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust-tools.nvim'}, { ft = "rust" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'indent-blankline.nvim', 'nvim-treesitter', 'vim-sleuth'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'indent-blankline.nvim', 'nvim-treesitter', 'vim-sleuth'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'gitsigns.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'LuaSnip'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
