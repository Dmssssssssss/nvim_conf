vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --Autopairs

  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end}

  --LSP 
  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim'}

  use { 'neovim/nvim-lspconfig' }
  use { 'hrsh7th/nvim-cmp', config = [[require('config.nvim-cmp')]] }    
  use { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' } 
  use { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' }        -- buffer auto-completion
  use { 'hrsh7th/cmp-path', after = 'nvim-cmp' }          -- path auto-completion
  use { 'hrsh7th/cmp-cmdline', after = 'nvim-cmp' }       -- cmdline auto-completion 

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  --Nvim trees

  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}

  --For buffer tab

  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  --Theme

  use 'Mofiqul/vscode.nvim'

  --For better view 
  use { "nvim-treesitter/nvim-treesitter", run = ':TSUpdate'}
end)
