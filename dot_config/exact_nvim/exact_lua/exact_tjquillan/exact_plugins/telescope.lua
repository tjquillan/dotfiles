local M = {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    branch = "0.1.x",
    dependencies = {
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
}

function M.opts()
    local actions = require("telescope.actions")
    return {
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
    }
end

function M.config(_, opts)
    local telescope = require("telescope")

    telescope.setup(opts)

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

M.keys = {
    {
        "<leader>ff",
        function()
            require("tjquillan.plugins.telescope").project_files()
        end,
        desc = "Find File",
    },
    {
        "<leader>fg",
        function()
            require("tjquillan.plugins.telescope").project_files()
        end,
        desc = "Live Grep",
    },
    {
        "<leader>fb",
        function()
            require("telescope.builtin").live_grep()
        end,
        desc = "List Buffers",
    },
    {
        "<leader>fh",
        function()
            require("telescope.builtin").help_tags()
        end,
        desc = "List Help Tags",
    },
}

return M
