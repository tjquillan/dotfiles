local M = {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
}

function M.deactivate()
    vim.cmd([[Neotree close]])
end

function M.init()
    if vim.fn.argc() == 1 then
        local stat = vim.loop.fs_stat(vim.fn.argv(0))
        if stat and stat.type == "directory" then
            require("neo-tree")
        end
    end
end

M.opts = {
    close_if_last_window = false,
    popup_border_style = "rounded",
    enable_git_status = true,
    enable_diagnostics = true,
    window = {
        position = "left",
        width = 40,
    },
    filesystem = {
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
    },
}

return M
