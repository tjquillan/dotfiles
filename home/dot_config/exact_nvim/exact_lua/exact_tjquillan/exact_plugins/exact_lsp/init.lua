local M = {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "williamboman/mason-lspconfig.nvim",
        { "folke/neodev.nvim", opts = {} },
        { "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
    },
}

---@class PluginLspOpts
M.opts = {
    diagnostics = {
        underline = true,
        update_in_insert = false,
        virtual_text = {
            spacing = 4,
            source = "if_many",
            prefix = "●",
            -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
            -- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
            -- prefix = "icons",
        },
        severity_sort = true,
    },
    ---@type lspconfig.options
    servers = {},
    setup = {},
}

---@param opts PluginLspOpts
M.config = function(_, opts)
    local plugin = require("lazy.core.config").spec.plugins["neoconf.nvim"]
    require("neoconf").setup(require("lazy.core.plugin").values(plugin, "opts", false))

    vim.diagnostic.config(vim.deepcopy(opts.diagnostics))
    local servers = opts.servers
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local lspconfig = require("lspconfig")
    local function setup_server(server)
        local server_opts = vim.tbl_deep_extend("force", {
            capabilities = vim.deepcopy(capabilities),
        }, servers[server] or {})

        if opts.setup[server] and opts.setup[server](server, server_opts) then
            return
        end

        lspconfig[server].setup(server_opts)
    end

    local ensure_installed = {} ---@type string[]
    for server, _ in pairs(servers) do
        ensure_installed[#ensure_installed + 1] = server
    end

    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup({ ensure_installed = ensure_installed, handlers = { setup_server } })
end

return M
