local M = {
    "folke/noice.nvim",
    lazy = false,
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
}

M.opts = {
    views = {
        notify_replace = {
            backend = "notify",
            fallback = "mini",
            format = "notify",
            replace = true,
            merge = false,
        },
    },
    lsp = {
        progress = {
            view = "notify_replace",
            format = {
                { "{spinner} ", hl_group = "NoiceLspProgressSpinner" },
                {
                    "{progress} ",
                    key = "progress.percentage",
                    contents = {
                        { "{data.progress.message} " },
                    },
                },
                "({data.progress.percentage}%) ",
                { "{data.progress.title} ", hl_group = "NoiceLspProgressTitle" },
                { "{data.progress.client} ", hl_group = "NoiceLspProgressClient" },
            },
        },
        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
        },
    },
    routes = {
        {
            filter = {
                event = "msg_show",
                kind = "",
                find = "written",
            },
            opts = { skip = true },
        },
    },
    -- you can enable a preset for easier configuration
    presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = true, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
    },
}

return M
