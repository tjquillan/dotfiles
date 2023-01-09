local M = {}

local c = require("onedark.colors")

M.colors = {
    bg = c.bg0,
    fg = c.fg,
    red = c.red,
    green = c.green,
    yellow = c.yellow,
    blue = c.blue,
    purple = c.purple,
    cyan = c.cyan,
    gray = c.grey,
}

M.mode_colors = {
    n = M.colors.green,
    i = M.colors.cyan,
    v = M.colors.red,
    V = M.colors.red,
    ["\22"] = M.colors.red,
    c = M.colors.yellow,
    s = M.colors.purple,
    S = M.colors.purple,
    ["\19"] = M.colors.purple,
    R = M.colors.yellow,
    r = M.colors.yellow,
    ["!"] = M.colors.red,
    t = M.colors.red,
}

function M.get_mode_color(self)
    return M.mode_colors[vim.fn.mode():sub(1, 1)]
end

M.sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
        {
            function()
                return "▊"
            end,
            color = function()
                return { fg = M:get_mode_color() }
            end,
            padding = { left = 0, right = 1 },
        },
        {
            "mode",
            color = function()
                return { fg = M:get_mode_color() }
            end,
            padding = { left = 0, right = 1 },
        },
        { "branch", color = { fg = M.colors.blue }, padding = { left = 0, right = 1 } },
        { "diff", padding = { left = 0, right = 1 } },
        { "diagnostics", padding = { left = 0, right = 1 } },
        { "filename", padding = { left = 0, right = 1 } },
    },
    lualine_x = {
        { "encoding", padding = { left = 0, right = 1 } },
        "filetype",
        {
            function()
                local names = {}
                for _, server in pairs(vim.lsp.buf_get_clients(0)) do
                    table.insert(names, server.name)
                end
                if next(names) == nil then
                    return ""
                else
                    return "[" .. table.concat(names, " ") .. "]"
                end
            end,
            color = { fg = M.colors.green },
            padding = { left = 0, right = 1 },
        },
        { "progress", padding = { left = 0, right = 1 } },
        { "location", padding = { left = 0, right = 1 } },
        {
            function()
                return "▊"
            end,
            color = function()
                return { fg = M:get_mode_color() }
            end,
            padding = { left = 0, right = 0 },
        },
    },
    lualine_y = {},
    lualine_z = {},
}

return M
