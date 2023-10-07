return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            {
                "Saecki/crates.nvim",
                event = { "BufRead Cargo.toml" },
                config = true,
            },
        },
        ---@param opts cmp.ConfigSchema
        opts = function(_, opts)
            local cmp = require("cmp")
            opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
                { name = "crates" },
            }))
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, { "ron", "rust", "toml" })
            end
        end,
    },
    {
        "williamboman/mason.nvim",
        optional = true,
        opts = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, { "codelldb" })
            end
        end,
    },
    {
        "simrat39/rust-tools.nvim",
        lazy = true,
        opts = function()
            local mason_registry = require("mason-registry")
            local adapter ---@type any
            -- rust tools configuration for debugging support
            local codelldb = mason_registry.get_package("codelldb")
            local extension_path = codelldb:get_install_path() .. "/extension/"
            local codelldb_path = extension_path .. "adapter/codelldb"
            local liblldb_path = vim.fn.has("mac") == 1 and extension_path .. "lldb/lib/liblldb.dylib"
                or extension_path .. "lldb/lib/liblldb.so"
            adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path)
            return {
                dap = {
                    adapter = adapter,
                },
                tools = {
                    on_initialized = function()
                        vim.cmd([[
                      augroup RustLSP
                        autocmd CursorHold                      *.rs silent! lua vim.lsp.buf.document_highlight()
                        autocmd CursorMoved,InsertEnter         *.rs silent! lua vim.lsp.buf.clear_references()
                        autocmd BufEnter,CursorHold,InsertLeave *.rs silent! lua vim.lsp.codelens.refresh()
                      augroup END
                    ]])
                    end,
                },
            }
        end,
        config = function() end,
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                rust_analyzer = {
                    settings = {
                        cargo = {
                            allFeatures = true,
                            loadOutDirsFromCheck = true,
                            runBuildScripts = true,
                        },
                        checkOnSave = {
                            allFeatures = true,
                            command = "clippy",
                            extraArgs = { "--no-deps" },
                        },
                        procMacro = {
                            enable = true,
                            ignored = {
                                ["async-trait"] = { "async_trait" },
                                ["napi-derive"] = { "napi" },
                                ["async-recursion"] = { "async_recursion" },
                            },
                        },
                    },
                },
            },
        },
    },
}
