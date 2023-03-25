vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } },
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use('mbbill/undotree')

    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            -- {'williamboman/mason.nvim'},           -- Optional
            -- {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-buffer' }, -- Optional
            { 'hrsh7th/cmp-path' }, -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' }, -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        },
    }

    use 'nvim-tree/nvim-web-devicons'
    use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    require('lualine').setup({})

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }


    use {
        'navarasu/onedark.nvim',
    }
    require('onedark').setup {
        style = 'darker'
    }
    require('onedark').load()

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    use 'tpope/vim-repeat'
    use 'ggandor/leap.nvim'

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("indent_blankline").setup()
        end
    }

    use({
        "folke/noice.nvim",
        config = function()
            require("noice").setup({
                lsp = {
                    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
                    override = {
                        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                        ["vim.lsp.util.stylize_markdown"] = true,
                        ["cmp.entry.get_documentation"] = true,
                    },
                },
                -- you can enable a preset for easier configuration
                presets = {
                    bottom_search = true, -- use a classic bottom cmdline for search
                    command_palette = false, -- position the cmdline and popupmenu together
                    long_message_to_split = true, -- long messages will be sent to a split
                    inc_rename = false, -- enables an input dialog for inc-rename.nvim
                    lsp_doc_border = false, -- add a border to hover docs and signature help
                },
            })
        end,
        requires = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        }
    })

    -- use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    --     require("toggleterm").setup({
    --         open_mapping = [[<C-\>]],
    --     })
    -- end}

    use "numToStr/FTerm.nvim"

    use {
        'numToStr/Navigator.nvim',
        config = function()
            require('Navigator').setup()
        end
    }

    use 'simrat39/rust-tools.nvim'

    use 'AndrewRadev/switch.vim'

    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'

    use 'mg979/vim-visual-multi'

    --[[ use {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            local db = require('dashboard')
            db.setup({
                theme = 'hyper',
                config = {
                    shortcut = {
                        { desc = '[  Github]', group = 'DashboardShortCut' },
                        { desc = '[  tqwewe]', group = 'DashboardShortCut' },
                        { desc = '[  0.2.3]', group = 'DashboardShortCut' },
                    }
                },
            })
        end,
        requires = { 'nvim-tree/nvim-web-devicons' }
    } ]]
    use {
        'goolord/alpha-nvim',
        config = function()
            local alpha = require 'alpha'
            local dashboard = require 'alpha.themes.dashboard'
            dashboard.section.header.val = {
                [[                               __                ]],
                [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
                [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
                [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
                [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
                [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
            }
            dashboard.section.buttons.val = {
                dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
                dashboard.button("SPC f p", "  Projects"),
                dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
            }
            alpha.setup(dashboard.config)
        end
    }

    use 'nvim-telescope/telescope-project.nvim'

    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                --       -- or leave it empty to use the default settings
                --             -- refer to the configuration section below
            }
        end
    }
end)
