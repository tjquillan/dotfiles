local M = {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
}

function M.config()
    require("dressing").setup({
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
    })
end

return M
