-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use 'nvim-tree/nvim-web-devicons'
  use {
      "nvim-neorg/neorg",
        config = function()
            require('neorg').setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.keybinds"] = { -- Configures keybindings
                        config = {
                            default_keybinds = true, -- Generate the default keybindings
                            neorg_leader = ";",
                        },
                    },
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = { -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                work = "~/notes/work",
                                life = "~/notes/life",
                                learn = "~/notes/learn",
                            },
                            default_workspace = "learn",
                        },
                    },
                },
            }
        end,
        run = ":Neorg sync-parsers",
        requires = "nvim-lua/plenary.nvim",
  }
  use ({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}
  use('jose-elias-alvarez/null-ls.nvim')
  use('neovim/nvim-lspconfig')
  use('MunifTanjim/prettier.nvim')
  use('darrikonn/vim-gofmt')
  use('preservim/tagbar')
  use('junegunn/goyo.vim')
  use('lewis6991/gitsigns.nvim')
  use('tpope/vim-fugitive')
  use('nvim-tree/nvim-tree.lua')
  use('ThePrimeagen/harpoon')
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }


  
end)
