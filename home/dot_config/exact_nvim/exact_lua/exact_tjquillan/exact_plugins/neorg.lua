local M = {
    "nvim-neorg/neorg",
    ft = "norg",
}

M.opts = {
    load = {
        ["core.defaults"] = {},
        ["core.norg.concealer"] = {},
        ["core.norg.completion"] = {
            config = { engine = "nvim-cmp" },
        },
        ["core.integrations.nvim-cmp"] = {},
    },
}

return M
