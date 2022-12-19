return function()
    require("neo-tree").setup({
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        window = {
            position = "left",
            width = 40,
        },
        filesystem = {
            hijack_netrw_behavior = "open_default",
        },
    })
end
