return function() 
    -- local signs = {
    --     { name = "DiagnosticSignError", text = "" },
    --     { name = "DiagnosticSignWarn", text = "" },
    --     { name = "DiagnosticSignHint", text = "" },
    --     { name = "DiagnosticSignInfo", text = "" },
    -- }

    -- for _, sign in ipairs(signs) do
    --     vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
    -- end

    vim.diagnostic.config({
        virtual_text = false,
        -- signs = {
        --     active = signs,
        -- },
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