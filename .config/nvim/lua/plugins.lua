require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-treesitter/nvim-treesitter'
  use 'christoomey/vim-tmux-navigator'
  use {
    'preservim/nerdtree',
    requires = {
      'Xuyuanp/nerdtree-git-plugin',
      -- 'ryanoasis/vim-devicons',
      'tiagofumo/vim-nerdtree-syntax-highlight',
    }
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'BurntSushi/ripgrep',
      'nvim-telescope/telescope-fzf-native.nvim',
      'sharkdp/fd',
    }
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
end)
