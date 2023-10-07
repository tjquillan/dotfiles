local M = {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufRead", "BufNewFile" },
}

M.opts = {
    scope = {
        enabled = true,
    },
    exclude = {
        filetypes = {
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
            "dashboard",
            "notify",
            "toggleterm",
            "lazyterm",
        },
        buftypes = {
            "terminal",
            "nofile",
        },
    },
}

return M
