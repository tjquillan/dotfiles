local M = {
    "numToStr/Comment.nvim",
    keys = {
        "gc",
        "gb",
        "gcc",
        "gbc",
    },
    dependencies = {
        "JoosepAlviste/nvim-ts-context-commentstring",
    },
}

function M.opts(_, opts)
    opts.pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook()
end

return M
