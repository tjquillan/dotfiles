return function()
    -- List of Language Servers to setup
    local servers = {
        'bashls',
        'cmake',
        'clangd',
        'omnisharp',
        'cssls',
        'gopls',
        'html',
        'jdtls',
        'jsonls',
        'kotlin_language_server',
        'sumneko_lua',
        'powershell_es',
        'pyright',
        'rust_analyzer',
        'tsserver',
        'eslint'
    }

    require("nvim-lsp-installer").setup({
        ensure_installed = servers,
        ui = {
            icons = {
                server_installed = "✓",
                server_pending = "➜",
                server_uninstalled = "✗"
            }
        }
    })

    -- Add additional capabilities supported by nvim-cmp
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

    -- Handlers
    local handlers = require('plugins.config.lsp.handlers')

    local lspconfig = require('lspconfig')
    for _, lsp in pairs(servers) do
        lspconfig[lsp].setup({
            on_attach = handlers.on_attach,
            capabilities = capabilities,
        })
    end
end