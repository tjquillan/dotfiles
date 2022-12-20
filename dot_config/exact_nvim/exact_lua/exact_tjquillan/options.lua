vim.opt.termguicolors = true -- Enables 24-bit RGB color
vim.opt.hidden = true -- Enable modified buffers in background
vim.opt.list = true -- Enable list mode
vim.opt.smarttab = true -- Insert blanks according to 'shiftwidth'
vim.opt.smartindent = true -- Do smart autoindenting when starting a new line
vim.opt.splitbelow = true -- Place split windows below the current one
vim.opt.splitright = true -- Place vsplit windows below the current one
vim.opt.number = true -- Print the line number in front of each line
vim.opt.foldenable = true -- Enable folding
vim.opt.autoindent = true -- Copy indent from current line when starting a new line
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.tabstop = 4 -- Number of spaces tabs count for
vim.opt.wrap = false -- Disable line wrap

-- don't load the plugins below
local builtins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logiPat",
    "matchit",
    "matchparen",
    "netrw",
    "netrwFileHandlers",
    "netrwPlugin",
    "netrwSettings",
    "rrhelper",
    "tar",
    "tarPlugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
}

for _, plugin in ipairs(builtins) do
    vim.g["loaded_" .. plugin] = 1
end

-- Disable unused providers
local providers = {
    "python3",
    "ruby",
    "node",
    "perl",
}

for _, plugin in ipairs(providers) do
    vim.g["loaded_" .. plugin .. "_provider"] = 0
end
