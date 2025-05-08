call plug#begin('~/.local/share/nvim/plugged')

" Theme
Plug 'morhetz/gruvbox'
Plug 'rebelot/kanagawa.nvim'
" LSP для Python
Plug 'neovim/nvim-lspconfig'

" Автодополнение
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'

" Подсветка синтаксиса
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Статус-бар
Plug 'vim-airline/vim-airline'

" Поиск
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.4'}
Plug 'nvim-lua/plenary.nvim'

" Git
Plug 'tpope/vim-fugitive'

" Управление виртуальными окружениями Python
Plug 'linux-cultist/venv-selector.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Форматирование кода через Black и isort
Plug 'stevearc/conform.nvim'

call plug#end()

syntax enable
set termguicolors
colorscheme gruvbox

set number
set relativenumber

set termguicolors
lua << EOF
require('kanagawa').setup({
  theme = "wave", -- можно выбрать "wave", "dragon", "lotus"
  background = {
    dark = "wave",  -- используйте wave для темного фона
    light = "lotus"
  }
})
vim.cmd("colorscheme kanagawa")
EOF

