local M = {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
}

function M.config()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    telescope.setup({
        defaults = {
            mappings = {
                i = {
                    ["<esc>"] = actions.close,
                },
            },
        },
        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "smart_case",
            },
        },
    })

    telescope.load_extension("fzf")
    telescope.load_extension("notify")
end

function M.project_files()
    local opts = {} -- define here if you want to define something
    local ok = pcall(require("telescope.builtin").git_files, opts)
    if not ok then
        require("telescope.builtin").find_files(opts)
    end
end

function M.init()
    vim.keymap.set("n", "<leader>ff", function()
        require("tjquillan.plugins.telescope").project_files()
    end, { desc = "Find File" })
    vim.keymap.set("n", "<leader>fg", function()
        require("telescope.builtin").live_grep()
    end, { desc = "Live Grep" })
    vim.keymap.set("n", "<leader>fb", function()
        require("telescope.builtin").buffers()
    end, { desc = "List Buffers" })
    vim.keymap.set("n", "<leader>fh", function()
        require("telescope.builtin").help_tags()
    end, { desc = "List Help Tags" })
end

return M
