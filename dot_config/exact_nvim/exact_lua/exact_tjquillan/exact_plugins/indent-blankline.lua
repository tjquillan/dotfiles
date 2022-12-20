local M = {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufRead", "BufNewFile" },
}

function M.config()
    local indent_blankline = require("indent_blankline")

    indent_blankline.setup({
        use_treesitter = true,
        show_first_indent_level = true,
        show_trailing_blankline_indent = false,
        show_current_context = true,
        filetype_exclude = {
            "",
            "alpha",
            "help",
            "lazy",
            "lsp-installer",
            "lspinfo",
            "mason",
            "neo-tree",
            "neogitstatus",
            "NvimTree",
            "packer",
            "startify",
            "TelescopePrompt",
            "TelescopeResults",
            "terminal",
            "Trouble",
        },
        buftype_exclude = {
            "terminal",
            "nofile",
        },
    })
end

return M
