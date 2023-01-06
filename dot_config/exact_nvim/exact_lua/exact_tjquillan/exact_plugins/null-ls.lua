local M = {
    "jose-elias-alvarez/null-ls.nvim",
}

function M.setup(options)
    local null_ls = require("null-ls")
    null_ls.setup({
        debounce = 150,
        save_after_format = false,
        sources = {
            null_ls.builtins.formatting.prettierd,
            null_ls.builtins.formatting.stylua,
            null_ls.builtins.formatting.fish_indent,
            null_ls.builtins.formatting.shfmt,
            null_ls.builtins.diagnostics.shellcheck,
            null_ls.builtins.diagnostics.markdownlint,
            null_ls.builtins.diagnostics.selene.with({
                condition = function(utils)
                    return utils.root_has_file({ "selene.toml" })
                end,
            }),
            null_ls.builtins.code_actions.gitsigns,
            null_ls.builtins.formatting.isort,
            null_ls.builtins.formatting.black,
            null_ls.builtins.diagnostics.flake8,
        },
        on_attach = options.on_attach,
    })
end

return M
