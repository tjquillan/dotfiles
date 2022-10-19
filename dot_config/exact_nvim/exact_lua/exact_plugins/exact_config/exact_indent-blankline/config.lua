return function()
    require("indent_blankline").setup({
        use_treesitter = true,
        show_first_indent_level = true,
        show_trailing_blankline_indent = false,
        show_current_context = true,
        filetype_exclude = {
            "help",
            "terminal",
            "alpha",
            "packer",
            "lspinfo",
            "TelescopePrompt",
            "TelescopeResults",
            "lsp-installer",
            "NvimTree",
            "Trouble",
            "",
        },
        buftype_exclude = { "terminal" },
    })
end
