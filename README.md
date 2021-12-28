<p align='center'>
  <h2 align='center'>Zephyrium for NeoVim</h2>
</p>

<p align='center'> A dark NeoVim theme, for night life coders! </p>

<p align='center'>
  <img src='https://raw.githubusercontent.com/titanzero/zephyrium/master/images/lua.png' />
</p>

# About
This is a fork of the actual [zephyr-nvim](https://github.com/glepnir/zephyr-nvim) made by Glepnir, with some additions from his PRs.

# Supports
 - [Treesitter](https://github.com/tree-sitter/tree-sitter)
 - [Native LSP](https://github.com/neovim/nvim-lspconfig)
 - [Telescope](https://github.com/nvim-telescope/telescope.nvim)
 - [Git signs](https://github.com/lewis6991/gitsigns.nvim)
 - [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
 - [Git Gutter](https://github.com/airblade/vim-gitgutter)

## Usage

### Installation
You can use it with your favorite plugin manager, some examples:

#### Vim-plus
```vim
Plug 'titanzero/zephyrium'
```

#### Packer.nvim
```lua
use 'titanzero/zephyrium'
```

#### Vundle
```vim
Plugin 'titanzero/zephyrium'
```

### Setup
If your using Lua:
```lua
require 'zephyrium' -- or
vim.cmd [[colorscheme zephyrium]]
```

With vimscript:
```vim
colorscheme zephyrium
```

## Thanks to
- [Glepnir](https://github.com/glepnir) For his amazing work on zephyr-nvim
