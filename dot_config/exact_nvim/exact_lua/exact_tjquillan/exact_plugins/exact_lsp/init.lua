local M = {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "williamboman/mason-lspconfig.nvim",
        "jose-elias-alvarez/typescript.nvim",
    },
}

function M.config()
    require("mason")
    require("tjquillan.plugins.lsp.diagnostics").setup()

    local handlers = require("tjquillan.plugins.lsp.handlers")
    local servers = require("tjquillan.plugins.lsp.servers")
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    local options = {
        on_attach = handlers.on_attach,
        capabilities = capabilities,
    }

    local lspconfig = require("lspconfig")
    for server, opts in pairs(servers) do
        opts = vim.tbl_deep_extend("force", {}, options, opts or {})
        if server == "tsserver" then
            require("typescript").setup({ server = opts })
        else
            lspconfig[server].setup(opts)
        end
    end
end

return M
