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

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugin.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  use 'ishan9299/nvim-solarized-lua'
  use {'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons'}
  use 'mattn/emmet-vim'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'
  use 'terryma/vim-multiple-cursors'
  use  {
    'notjedi/nvim-rooter.lua',
    config = function() require'nvim-rooter'.setup() end
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'}, {'burntsushi/ripgrep'} }
  }
  use 'rafamadriz/friendly-snippets'
  use {
    'lukas-reineke/indent-blankline.nvim'
    --config = function() require('ibl').setup() end
  }
  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup({}) end
  }
  use  {
    'neovim/nvim-lspconfig',
    requires = { 'mason-org/mason.nvim', 'mason-org/mason-lspconfig.nvim', 'j-hui/fidget.nvim' }
  }
  use  {
    'hrsh7th/nvim-cmp',
    requires = { 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' }
  }
  use { 'glepnir/lspsaga.nvim', branch = 'main' }
  use 'onsails/lspkind.nvim'
  use 'jwalton512/vim-blade'
  use 'posva/vim-vue'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
