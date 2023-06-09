local M = {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "williamboman/mason-lspconfig.nvim",
        "jose-elias-alvarez/typescript.nvim",
    },
}

M.signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

function M.init()
    vim.keymap.set("n", "gl", function()
        vim.diagnostic.open_float({ border = "rounded" })
    end, { silent = true })
    vim.keymap.set("n", "[d", function()
        vim.diagnostic.goto_prev({ border = "rounded" })
    end, { silent = true })
    vim.keymap.set("n", "]d", function()
        vim.diagnostic.goto_next({ border = "rounded" })
    end, { silent = true })
    vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { silent = true })

    for type, icon in pairs(M.signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end
end

function M.config()
    require("neodev").setup({})

    require("mason")
    require("tjquillan.plugins.lsp.diagnostics").setup()
    require("neoconf").setup({})

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

    -- require("tjquillan.plugins.null-ls").setup(options)
end

return M
