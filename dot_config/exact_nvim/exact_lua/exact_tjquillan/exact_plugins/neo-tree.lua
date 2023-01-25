local M = {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    event = "BufEnter",
    cmd = "Neotree",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
}

function M.init()
    vim.g.neo_tree_remove_legacy_commands = 1
    
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
        hijack_netrw_behavior = "open_default",
    },
}

return M
