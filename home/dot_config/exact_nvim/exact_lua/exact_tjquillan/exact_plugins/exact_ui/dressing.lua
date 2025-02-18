local M = {
    "stevearc/dressing.nvim",
}

function M.init()
    ---@diagnostic disable-next-line: duplicate-set-field
    vim.ui.select = function(...)
        require("lazy").load({ plugins = { "dressing.nvim" } })
        return vim.ui.select(...)
    end
    ---@diagnostic disable-next-line: duplicate-set-field
    vim.ui.input = function(...)
        require("lazy").load({ plugins = { "dressing.nvim" } })
        return vim.ui.input(...)
    end
end

M.opts = {
    input = {
        enabled = true,
        default_prompt = "Input",
        prompt_align = "center",
        border = "rounded",
    },
    select = {
        enabled = true,
        trim_prompt = true,
    },
}

return M
