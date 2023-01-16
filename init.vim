"   Allow custom rc files for different projects (use custom rc inside cwd if
"   an rc file exists in it)
set exrc 

"   Keep block cursor in INSERT mode rather than switching to 
"   a thin vertical line
"   Keep block cursor in INSERT mode rather than switching to thin vertical line
set guicursor=

"   Line numbering options
set relativenumber
set nu

set cursorline

set colorcolumn=80

set signcolumn=yes

"   Tab and indentation options
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

"   Search options
set nohlsearch
set incsearch

"   Turn off error sounds
set noerrorbells

"   Turn off automatic text wrapping
set nowrap

"   Begin scrolling when cursor is a given number of lines away from
"   top or bottom of screen
set scrolloff=8

"   Plugins (plug-vim) 
call plug#begin('~/.config/nvim/plugins')
Plug 'nvim-lualine/lualine.nvim'
Plug 'tpope/vim-fugitive'
Plug 'cocopon/iceberg.vim'
Plug 'projekt0n/github-nvim-theme'
call plug#end()

set termguicolors
colorscheme iceberg

"   Highlighting/color options
hi LineNr ctermfg=gray
hi CursorLineNr ctermfg=green
hi Normal guibg=NONE ctermbg=NONE

lua require('config')
