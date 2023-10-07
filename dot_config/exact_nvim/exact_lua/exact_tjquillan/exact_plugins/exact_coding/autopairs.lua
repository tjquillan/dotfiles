local M = {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
}

M.opts = {
    disable_filetype = { "TelescopePrompt", "spectre_panel" },
    check_ts = true,
    ts_config = {
        lua = { "string" },
        javascript = { "template_string" },
        java = false,
    },
}

function M.config(_, opts)
    local autopairs = require("nvim-autopairs")
    autopairs.setup(opts)

    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
end

return M
