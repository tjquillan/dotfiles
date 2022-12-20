local M = {}

function M.setup()
    vim.diagnostic.config({
        virtual_text = false,
        update_in_insert = true,
        underline = true,
        severity_sort = true,
        float = {
            focusable = false,
            style = "minimal",
            border = "rounded",
            source = "always",
            header = "",
            prefix = "",
        },
    })

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = "rounded",
    })

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
        border = "rounded",
    })

    local opts = { silent=true }
    vim.keymap.set('n', 'gl', 
        function()
            vim.diagnostic.open_float({ border = "rounded" })
        end,
        opts
    )
    vim.keymap.set('n', '[d', 
        function()
            vim.diagnostic.goto_prev({ border = "rounded" })
        end,
        opts
    )
    vim.keymap.set('n', ']d', 
        function()
            vim.diagnostic.goto_next({ border = "rounded" })
        end,
        opts
    )
    vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
end

return M