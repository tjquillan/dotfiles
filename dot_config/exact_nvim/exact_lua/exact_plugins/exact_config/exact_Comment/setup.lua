return function()
    vim.keymap.set("n", "<leader>/", function() require('Comment.api').toggle_current_linewise() end)
    vim.keymap.set("v", "<leader>/", function() require('Comment.api').toggle_linewise_op(vim.fn.visualmode()) end)
end