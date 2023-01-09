local M = {
    "rcarriga/nvim-dap-ui",
}

function M.config()
    require("dapui").setup({})
end

return M
