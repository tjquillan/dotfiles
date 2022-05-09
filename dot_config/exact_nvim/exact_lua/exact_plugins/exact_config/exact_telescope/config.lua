return function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')
    telescope.setup({
        defaults = {
            mappings = {
                i = {
                    ["<esc>"] = actions.close
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
            ["ui-select"] = {
                require("telescope.themes").get_dropdown({})
            }
        }
    })
end
