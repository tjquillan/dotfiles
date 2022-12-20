local M = {
    "nvim-treesitter/nvim-treesitter",
    event = "BufReadPre",
    cmd = {
        "TSUpdate",
    },
    dependencies = {
        "p00f/nvim-ts-rainbow",
        "windwp/nvim-ts-autotag",
    },
}

function M.build()
    local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
    ts_update()
end

function M.config()
    require("nvim-treesitter.configs").setup({
        ensure_installed = "all",
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        indent = {
            enable = true,
        },
        autotag = {
            enable = true,
        },
        rainbow = {
            enable = true,
            extended_mode = true,
        },
    })
end

return M