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

    local opts = { silent = true }
    vim.keymap.set("n", "gl", function()
        vim.diagnostic.open_float({ border = "rounded" })
    end, opts)
    vim.keymap.set("n", "[d", function()
        vim.diagnostic.goto_prev({ border = "rounded" })
    end, opts)
    vim.keymap.set("n", "]d", function()
        vim.diagnostic.goto_next({ border = "rounded" })
    end, opts)
    vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)
end

return M
