-- Plugins loading

require('packer').startup(function(use)
    -- Manage packer with packer
    use 'wbthomason/packer.nvim'

    -- Colorscheme
    use 'tiagovla/tokyodark.nvim'

    -- File explorer
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    }

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- For luasnip users.
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- Better syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSEnable highlight'
    }

    use 'windwp/nvim-autopairs'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        requires = {
            { 'nvim-lua/plenary.nvim' }
        }
    }

    use 'nvim-telescope/telescope-ui-select.nvim'

    -- Indent blankline
    use 'lukas-reineke/indent-blankline.nvim'

    -- LuaLine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- TypeScript support
    use {
        'pmizio/typescript-tools.nvim',
        requires = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
        config = function()
            require('typescript-tools').setup {}
        end,
    }


    use {
        'akinsho/bufferline.nvim',
        tag = '*',
        requires = 'nvim-tree/nvim-web-devicons'
    }

    -- Close buffer properly
    use 'echasnovski/mini.bufremove'

    -- Markdown preview

    use {
        'iamcco/markdown-preview.nvim',
        run = function() vim.fn['mkdp#util#install']() end,
    }

    -- Laravel support
    use {
        'adalessa/laravel.nvim',
        requires = { 
            'nvim-telescope/telescope.nvim',
            'tpope/vim-dotenv',
            'MunifTanjim/nui.nvim',
            'nvimtools/none-ls.nvim',
        }
    }

    -- Git diff
    use 'sindrets/diffview.nvim'

    -- Git signs in the buffer
    use 'lewis6991/gitsigns.nvim'
end)
