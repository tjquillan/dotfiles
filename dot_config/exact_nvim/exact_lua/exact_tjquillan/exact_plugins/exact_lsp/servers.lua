local M = {
    ansiblels = {},
    bashls = {},
    clangd = {},
    cmake = {},
    cssls = {},
    dockerls = {},
    eslint = {},
    gopls = {},
    html = {},
    jdtls = {},
    jsonls = {
        on_new_config = function(new_config)
            new_config.settings.json.schemas = new_config.settings.json.schemas or {}
            vim.list_extend(new_config.settings.json.schemas, require("schemastore").json.schemas())
        end,
        settings = {
            json = {
                format = {
                    enable = true,
                },
                validate = { enable = true },
            },
        },
    },
    kotlin_language_server = {},
    marksman = {},
    omnisharp = {},
    powershell_es = {},
    pyright = {},
    rust_analyzer = {
        settings = {
            ["rust-analyzer"] = {
                cargo = { allFeatures = true },
                checkOnSave = {
                    command = "clippy",
                    extraArgs = { "--no-deps" },
                },
            },
        },
    },
    sumneko_lua = {
        settings = {
            Lua = {
                telemetry = { enable = false },
            },
        },
    },
    taplo = {},
    teal_ls = {},
    tsserver = {},
    vimls = {},
    yamlls = {},
}

return M
