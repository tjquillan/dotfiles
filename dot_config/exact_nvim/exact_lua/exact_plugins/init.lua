local packer = require('plugins.packer')

return packer.startup(function(use)
    -- Essentials
    use {
        'wbthomason/packer.nvim',
        opt = true,
    }
    use { 'lewis6991/impatient.nvim' }
    
    -- Libraries
    use { 'nvim-lua/plenary.nvim' }
    use {
        'kyazdani42/nvim-web-devicons',
        module = 'nvim-web-devicons'
    }

    -- Colorscheme
    use {
        'navarasu/onedark.nvim',
        config = require('plugins.config.onedark.config'),
    }

    -- Modeline
    use {
        'nvim-lualine/lualine.nvim',
        config = require('plugins.config.lualine.config'),
        after = {'onedark.nvim'},
    }

    -- Syntax
    use {
        'nvim-treesitter/nvim-treesitter',
        config = require('plugins.config.treesitter.config'),
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
        module = 'nvim-treesitter',
        event = { 'BufRead', 'BufNewFile' },
        cmd = { 'TSUpdate' },
        requires = {
            {
                'p00f/nvim-ts-rainbow',
                config = require('plugins.config.ts-rainbow.config'),
                after = 'nvim-treesitter',
            },
            {
                'windwp/nvim-ts-autotag',
                config = require('plugins.config.ts-autotag.config'),
                after = 'nvim-treesitter',
            },
        }
    }

    -- Snippets
    use {
        'L3MON4D3/LuaSnip',
        event = "InsertEnter",
    }

    -- Completion
    use {
        'hrsh7th/nvim-cmp',
        config = require('plugins.config.cmp.config'),
        requires = {
            {'hrsh7th/cmp-buffer', after = 'nvim-cmp'},
            {'hrsh7th/cmp-path', after = 'nvim-cmp'},
            {'hrsh7th/cmp-cmdline', after = 'nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp'},
            {'saadparwaiz1/cmp_luasnip', after = {'nvim-cmp', 'LuaSnip'}},
            {'hrsh7th/cmp-nvim-lua', after = 'nvim-cmp'},
        }
    }

    -- Meson
    use {
        'williamboman/mason.nvim',
        config = require('plugins.config.mason.config')
    }

    -- LSP
    use {
        'williamboman/mason-lspconfig.nvim',
        {
            'neovim/nvim-lspconfig',
            setup = require('plugins.config.lsp.setup'),
            config = require('plugins.config.lsp.config'),
            after = { 'cmp-nvim-lsp' },
        }
    }

    -- Editor
    use {
        'windwp/nvim-autopairs',
        config = require('plugins.config.autopairs.config'),
        after = {'nvim-cmp', 'nvim-treesitter'},
    }
    use {
        'numToStr/Comment.nvim',
        setup = require('plugins.config.Comment.setup'),
        config = require('plugins.config.Comment.config'),
        module = 'Comment',
        keys = { 'gcc' },
    }
    use {
        'tpope/vim-sleuth',
        event = { 'BufRead', 'BufNewFile' },
    }
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = require('plugins.config.indent-blankline.config'),
        event = { 'BufRead', 'BufNewFile' },
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        setup = require('plugins.config.telescope.setup'),
        config = require('plugins.config.telescope.config'),
        module = 'telescope',
        cmd = 'Telescope',
        requires = {
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                config = require('plugins.config.telescope-fzf-native.config'),
                after = 'telescope.nvim',
                run = 'make',
            },
            {
                'nvim-telescope/telescope-ui-select.nvim',
                config = require('plugins.config.telescope-ui-select.config'),
                after = 'telescope.nvim',
            }
        }
    }

    -- File Explorer
    use {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v2.x',
        setup = require('plugins.config.neo-tree.setup'),
        config = require('plugins.config.neo-tree.config'),
        requires = {
            'nvim-lua/plenary.nvim',
            'kyazdani42/nvim-web-devicons',
            'MunifTanjim/nui.nvim',
        },
    }
    
    -- Git
    use {
        'lewis6991/gitsigns.nvim',
        config = require('plugins.config.gitsigns.config'),
        event = 'VimEnter',
    }

    -- Utils
    use {
        'tweekmonster/startuptime.vim',
        cmd = { 'StartupTime' },
    }

    -- Rust
    use {
        'simrat39/rust-tools.nvim',
        config = require('plugins.config.rust-tools.config'),
        ft = 'rust',
    }
end)
