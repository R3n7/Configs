-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use({ 'rose-pine/neovim',
  	as = 'rose-pine',
	config = function()
		vim.cmd("colorscheme rose-pine")
	end
})
   use('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
   use('ThePrimeagen/harpoon')
   use('nvim-treesitter/playground')
   use('mbbill/undotree')
   use('tpope/vim-fugitive')
   use { 'feline-nvim/feline.nvim', branch = '0.5-compat' }
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
use { "catppuccin/nvim", as = "catppuccin" }
use 'vimwiki/vimwiki'
use {
    '907th/vim-auto-save',
    config = function()
        vim.g.auto_save = 1
        vim.g.auto_save_in_insert_mode = 0
        vim.g.auto_save_on_focus_lost = 1
        vim.g.auto_save_timeout = 5
    end
}
end)

