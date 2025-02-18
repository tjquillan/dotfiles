local M = {
    "nvim-lualine/lualine.nvim",
    enabled = true,
    lazy = false,
}

function M.config()
    local statusline = require("tjquillan.plugins.lualine.statusline")

    require("lualine").setup({
        options = {
            theme = "onedark",
            section_separators = "",
            component_separators = "",
        },
        sections = statusline.sections,
    })
end

return M
