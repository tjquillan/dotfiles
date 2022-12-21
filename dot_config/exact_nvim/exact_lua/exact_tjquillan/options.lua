vim.opt.shortmess = {
    f = true, -- use "(3 of 5)" instead of "(file 3 of 5)"
    i = true, -- use "[noeol]" instead of "[Incomplete last line]"
    l = true, -- use "999L, 888B" instead of "999 lines, 888 bytes"
    n = true, -- use "[New]" instead of "[New File]"
    x = true, -- use "[dos]" instead of "[dos format]", "[unix]" instead of "[unix format]" and "[mac]" instead of "[mac format]"
    o = true, -- overwrite message for writing a file with subsequent message for reading a file
    O = true, -- message for reading a file overwrites any previous message
    t = true, -- truncate file message at the start if it is too long to fit on the command-line
    T = true, -- truncate other messages in the middle if they are too long to fit on the command line
    I = true, -- don't give the intro message when starting Vim
    F = true, -- don't give the file info when editing a file
}
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
