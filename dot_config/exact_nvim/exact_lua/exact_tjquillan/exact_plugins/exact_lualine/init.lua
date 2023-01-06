local M = {
    "nvim-lualine/lualine.nvim",
    enabled = true,
    lazy = false,
}

function M.config()
    local function lsp_active()
        local names = {}
        for _, server in pairs(vim.lsp.buf_get_clients(0)) do
            table.insert(names, server.name)
        end
        return "[" .. table.concat(names, " ") .. "]"
    end

    require("lualine").setup({
        options = {
            theme = "onedark",
            section_separators = "",
            component_separators = "",
        },
        sections = {
            lualine_c = {
                "filename",
                "lsp_progress",
            },
            lualine_x = {
                "encoding",
                "filetype",
                {
                    lsp_active,
                },
            },
        },
    })
end

return M
