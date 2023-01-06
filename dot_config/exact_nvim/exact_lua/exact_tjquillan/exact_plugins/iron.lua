local M = {
    "hkupty/iron.nvim",
    cmd = {
        "IronRepl",
        "IronReplHere",
        "IronRestart",
        "IronSend",
        "IronFocus",
        "IronHide",
        "IronWatch",
        "IronAttach",
    },
}

function M.config()
    local iron = require("iron.core")
    iron.setup({})
end

return M
