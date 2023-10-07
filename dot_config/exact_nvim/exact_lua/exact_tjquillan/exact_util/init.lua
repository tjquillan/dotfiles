local M = {}

---@param name string
function M.get_hlgroup(name, fallback)
    if vim.fn.hlexists(name) == 1 then
        local hl = vim.api.nvim_get_hl_by_name(name, vim.o.termguicolors)
        hl.fg, hl.bg, hl.sp = hl.foreground, hl.background, hl.special
        hl.ctermfg, hl.ctermbg = hl.foreground, hl.background
        return hl
    end
    return fallback
end

---@param on_attach fun(client, buffer)
function M.on_attach(on_attach)
    vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
            local buffer = args.buf
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            on_attach(client, buffer)
        end,
    })
end

return M
