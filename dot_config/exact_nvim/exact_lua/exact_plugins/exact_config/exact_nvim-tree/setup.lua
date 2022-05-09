return function()
    vim.keymap.set("n", "<C-n>", ":NvimTreeToggle <CR>")
    vim.keymap.set("n", "<leader>e", ":NvimTreeFocus <CR>")
end