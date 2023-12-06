local M = {
    "JoosepAlviste/nvim-ts-context-commentstring",
}

M.opts = {
    enable_autocmd = false,
}

function M.init()
    vim.g.skip_ts_context_commentstring_module = true
end

return M
