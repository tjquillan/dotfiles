local M = {
    "rebelot/heirline.nvim",
    enabled = false,
    lazy = false,
    dependencies = { "nvim-lua/lsp-status.nvim", "SmiteshP/nvim-navic" },
}

function M.config()
    require("tjquillan.plugins.heirline.statusline")
end

return M
