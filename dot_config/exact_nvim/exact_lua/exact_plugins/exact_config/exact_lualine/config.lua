return function()
    require('lualine').setup({
        options = {
            theme = 'onedark',
        },
        sections = {
            lualine_c = {
                'filename',
                'lsp_progress',
            },
            lualine_x = {
                'encoding',
                {
                    'filetype',
                    fmt = function(str)
                        local clients = vim.lsp.get_active_clients()
                        if next(clients) == nil then
                            return str
                        end
                        for _, client in ipairs(clients) do
                            local filetypes = client.config.filetypes
                            if filetypes and vim.fn.index(filetypes, str) ~= -1 then
                                return string.format("%s (%s)", str, client.name)
                            end
                        end
                        return str
                    end
                }
            },
        },
    })
end
