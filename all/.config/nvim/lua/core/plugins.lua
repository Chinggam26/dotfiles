local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- use { 'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end }
  use { "catppuccin/nvim", as = "catppuccin" }
  -- use ({ 'projekt0n/github-nvim-theme',
  --   config = function()
  --     require('github-theme').setup({
  --       -- ... 
  --     })
  --   end
  -- }) 
  use {
    'junegunn/fzf.vim',
    requires = { 'junegunn/fzf', run = ':call fzf#install()' }
  }
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  -- use 'ellisonleao/gruvbox.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'neovim/nvim-lspconfig'
  use 'simrat39/rust-tools.nvim'
  -- Completion framework:
  use 'hrsh7th/nvim-cmp' 

  -- LSP completion source:
  use 'hrsh7th/cmp-nvim-lsp'

  -- Useful completion sources:
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'                 
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'                
  use 'hrsh7th/vim-vsnip' 

  use 'voldikss/vim-floaterm'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end

  vim.cmd('set number');
  vim.cmd('set relativenumber');
  vim.cmd('colorscheme catppuccin-mocha');
end)
