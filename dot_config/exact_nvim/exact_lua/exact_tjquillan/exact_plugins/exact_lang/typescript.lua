return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, { "typescript", "tsx" })
            end
        end,
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                ---@type lspconfig.options.tsserver
                tsserver = {
                    keys = {
                        {
                            "<leader>co",
                            function()
                                vim.lsp.buf.code_action({
                                    apply = true,
                                    context = {
                                        only = { "source.organizeImports.ts" },
                                        diagnostics = {},
                                    },
                                })
                            end,
                            desc = "Organize Imports",
                        },
                    },
                    settings = {
                        typescript = {
                            format = {
                                indentSize = vim.o.shiftwidth,
                                convertTabsToSpaces = vim.o.expandtab,
                                tabSize = vim.o.tabstop,
                            },
                        },
                        javascript = {
                            format = {
                                indentSize = vim.o.shiftwidth,
                                convertTabsToSpaces = vim.o.expandtab,
                                tabSize = vim.o.tabstop,
                            },
                        },
                        completions = {
                            completeFunctionCalls = true,
                        },
                    },
                },
            },
        },
    },
}
