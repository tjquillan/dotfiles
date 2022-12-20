local M = {
    "kyazdani42/nvim-web-devicons",
}

function M.config()
    local web_devicons = require("nvim-web-devicons")
    web_devicons.setup({ default = true })
end

return M
