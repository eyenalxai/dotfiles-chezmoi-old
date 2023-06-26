-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- lsp-zero
  use { 'VonHeikemen/lsp-zero.nvim', branch = 'v2.x' }
  use 'neovim/nvim-lspconfig'
  
  -- Autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'

  -- Mason
  use { 'williamboman/mason.nvim', run = ":MasonUpdate" }
  use 'williamboman/mason-lspconfig.nvim'

end)
