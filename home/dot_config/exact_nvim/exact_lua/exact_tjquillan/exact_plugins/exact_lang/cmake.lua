return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, { "cmake" })
            end
        end,
    },
    {
        "mason.nvim",
        opts = function(_, opts)
            opts.ensure_installed = opts.ensure_installed or {}
            vim.list_extend(opts.ensure_installed, { "cmakelang" })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                neocmake = {},
            },
        },
    },
    {
        "Civitasv/cmake-tools.nvim",
        ft = { "c", "cpp", "cmake" },
    },
}
