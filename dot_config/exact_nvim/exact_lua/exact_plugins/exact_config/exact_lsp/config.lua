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

    require("mason-lspconfig").setup({
        ensure_installed = servers
    })

    -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

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