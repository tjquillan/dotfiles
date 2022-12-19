-- Aliases
local cmd = vim.cmd
local fn = vim.fn
local call = vim.call
local g = vim.g
local opt = vim.opt
local api = vim.api

-- Basic Options
opt.termguicolors = true
opt.hidden = true
opt.list = true
opt.smarttab = true
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.wrap = false
opt.linebreak = true
opt.number = true
opt.foldenable = true

-- Indentation Options
opt.autoindent = true
-- opt.expandtab = true
-- opt.tabstop = 2
-- opt.shiftwidth = 2
-- opt.softtabstop = -1

-- Disable distribution plugins
g.loaded_gzip = 1
g.loaded_tar = 1
g.loaded_tarPlugin = 1
g.loaded_zip = 1
g.loaded_zipPlugin = 1
g.loaded_getscript = 1
g.loaded_getscriptPlugin = 1
g.loaded_vimball = 1
g.loaded_vimballPlugin = 1
g.loaded_matchit = 1
g.loaded_matchparen = 1
g.loaded_2html_plugin = 1
g.loaded_logiPat = 1
g.loaded_rrhelper = 1
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.loaded_netrwSettings = 1
g.loaded_netrwFileHandlers = 1

-- Disable unused providers
g.loaded_python3_provider = 0
g.loaded_ruby_provider = 0
g.loaded_node_provider = 0
g.loaded_perl_provider = 0

-- Plugins
local present, impatient = pcall(require, 'impatient')
if present then
    impatient.enable_profile()
end

api.nvim_create_user_command('PackerInstall', function()
  cmd [[packadd packer.nvim]]
  require('plugins').install()
end, {})
api.nvim_create_user_command('PackerUpdate', function()
  cmd [[packadd packer.nvim]]
  require('plugins').update()
end, {})
api.nvim_create_user_command('PackerSync', function()
  cmd [[packadd packer.nvim]]
  require('plugins').sync()
end, {})
api.nvim_create_user_command('PackerClean', function()
  cmd [[packadd packer.nvim]]
  require('plugins').clean()
end, {})
api.nvim_create_user_command('PackerCompile', function()
  cmd [[packadd packer.nvim]]
  require('plugins').compile()
end, {})
