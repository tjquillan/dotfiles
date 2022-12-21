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
        settings = {
            json = {
                format = {
                    enable = true,
                },
                schemas = require("schemastore").json.schemas(),
                validate = { enable = true },
            },
        },
    },
    kotlin_language_server = {},
    marksman = {},
    omnisharp = {},
    powershell_es = {},
    pyright = {},
    rust_analyzer = {},
    sumneko_lua = {},
    teal_ls = {},
    tsserver = {},
    vimls = {},
    yamlls = {},
}

return M
