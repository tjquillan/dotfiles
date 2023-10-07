local M = {
    "williamboman/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
}

M.opts = {
    ui = {
        border = "rounded",
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
    ensure_installed = {},
}

---@param opts MasonSettings | {ensure_installed: string[]}
function M.config(_, opts)
    require("mason").setup(opts)
    local mason_registry = require("mason-registry")
    local function ensure_installed()
        for _, tool in ipairs(opts.ensure_installed) do
            local p = mason_registry.get_package(tool)
            if not p:is_installed() then
                p:install()
            end
        end
    end
    mason_registry.refresh(ensure_installed)
end

return M
