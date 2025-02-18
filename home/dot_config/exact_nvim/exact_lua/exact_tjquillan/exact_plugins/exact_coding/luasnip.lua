local M = {
    "L3MON4D3/LuaSnip",
    version = "2.*",
    build = "make install_jsregexp",
    event = "InsertEnter",
    dependencies = {
        {
            "rafamadriz/friendly-snippets",
            config = function()
                require("luasnip.loaders.from_vscode").lazy_load()
            end,
        },
    },
}

M.opts = {
    history = true,
    delete_check_events = "TextChanged",
}

return M
