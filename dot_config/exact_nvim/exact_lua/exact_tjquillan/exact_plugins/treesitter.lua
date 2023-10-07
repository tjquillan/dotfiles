local M = {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile", "CmdlineEnter" },
    cmd = {
        "TSUpdate",
        "TSUpdateSync",
        "TSInstall",
    },
    dependencies = {
        "p00f/nvim-ts-rainbow",
        "windwp/nvim-ts-autotag",
        "JoosepAlviste/nvim-ts-context-commentstring",
    },
}

---@type TSConfig
M.opts = {
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
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
}

---@param opts TSConfig
function M.config(_, opts)
    require("nvim-treesitter.configs").setup(opts)
end

return M
