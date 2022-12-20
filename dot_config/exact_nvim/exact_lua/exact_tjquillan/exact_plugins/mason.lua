local M = {
    "williamboman/mason.nvim",
    cmd = "Mason",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
}

function M.config()
    local mason = require("mason")
    mason.setup({
        ui = {
            border = "rounded",
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
        },
    })

    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup({
        automatic_installation = false,
    })
end

return M
