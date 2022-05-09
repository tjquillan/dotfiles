return function()
    vim.keymap.set("n", "<leader>ff", require('plugins.config.telescope.functions.project_files'))
    vim.keymap.set("n", "<leader>fg", function() require('telescope.builtin').live_grep() end)
    vim.keymap.set("n", "<leader>fb", function() require('telescope.builtin').buffers() end)
    vim.keymap.set("n", "<leader>fh", function() require('telescope.builtin').help_tags() end)
end