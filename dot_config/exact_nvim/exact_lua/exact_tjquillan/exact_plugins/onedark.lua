local M = {
    "navarasu/onedark.nvim",
    lazy = false,
}

function M.config()
    local onedark = require("onedark")
    onedark.setup({
        style = "dark",
        highlights = {
            rainbowcol1 = { fg = "$cyan" },
        },
    })
    onedark.load()
end

return M
