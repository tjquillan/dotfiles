local M = {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
}

M.opts = {
    style = "dark",
    highlights = {
        rainbowcol1 = { fg = "$cyan" },
    },
}

function M.config(_, opts)
    local onedark = require("onedark")
    onedark.setup(opts)
    onedark.load()
end

return M
