local M = {
    "numToStr/Comment.nvim",
    keys = {
        "gc",
        "gb",
        "gcc",
        "gbc",
    },
}

function M.config()
    local comment = require("Comment")
    comment.setup()
end

return M
