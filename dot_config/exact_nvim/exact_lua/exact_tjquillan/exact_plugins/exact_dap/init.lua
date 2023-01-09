local M = {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
    },
}

function M.init()
    vim.keymap.set("n", "<leader>db", function()
        require("dap").toggle_breakpoint()
    end, { desc = "Toggle [D]ebug [B]reakpoint" })
    vim.keymap.set("n", "<leader>dc", function()
        require("dap").continue()
    end, { desc = "[D]ebug [C]ontinue" })

    vim.keymap.set("n", "<leader>do", function()
        require("dap").step_over()
    end, { desc = "[D]ebug Step [O]ver" })

    vim.keymap.set("n", "<leader>di", function()
        require("dap").step_into()
    end, { desc = "[D]ebug Step [I]nto" })

    vim.keymap.set("n", "<leader>dw", function()
        require("dap.ui.widgets").hover()
    end, { desc = "[D]ebug [W]idgets" })

    vim.keymap.set("n", "<leader>dr", function()
        require("dap").repl.open()
    end, { desc = "[D]ebug [R]epl" })

    vim.keymap.set("n", "<leader>du", function()
        require("dapui").toggle({})
    end, { desc = "[D]ap [U]I" })
end

function M.config()
    local dap = require("dap")

    local dapui = require("dapui")
    dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open({})
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close({})
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close({})
    end
end

return M
