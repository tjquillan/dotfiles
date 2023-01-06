local M = {
    "williamboman/mason.nvim",
    cmd = "Mason",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
}

function M.build()
    local mr = require("mason-registry")
    local server_mapping = require("mason-lspconfig.mappings.server")
    local servers = require("tjquillan.plugins.lsp.servers")
    local tools = require("tjquillan.plugins.mason.tools")
    for server, _ in pairs(servers) do
        local tool = server_mapping.lspconfig_to_package[server]
        table.insert(tools, tool)
    end
    for _, tool in ipairs(tools) do
        local p = mr.get_package(tool)
        if not p:is_installed() then
            p:install()
        end
    end
end

function M.init()
    vim.api.nvim_create_user_command("MasonSync", function()
        require("tjquillan.plugins.mason").build()
    end, { desc = "Sync Mason Tools" })
end

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
