return function()
    require("nvim-tree").setup({
        filters = {
            dotfiles = false,
        },
        disable_netrw = true,
        hijack_netrw = true,
        open_on_tab = false,
        hijack_cursor = true,
        hijack_unnamed_buffer_when_opening = false,
        update_cwd = true,
        update_focused_file = {
            enable = true,
            update_cwd = false,
        },
        view = {
            width = 25,
            hide_root_folder = true,
            side = "left",
        },
        git = {
            enable = false,
            ignore = false,
        },
        actions = {
            open_file = {
                resize_window = true,
            },
        },
        renderer = {
            indent_markers = {
                enable = true,
            },
            icons = {
                webdev_colors = true,
            },
        },
    })
end
