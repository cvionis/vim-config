"   Allow custom rc files for different projects (use custom rc inside cwd if
"   an rc file exists in it)
set exrc 

"   Keep block cursor in INSERT mode rather than switching to thin vertical line
set guicursor=

"   Line numbering options
set relativenumber
set nu

set cursorline

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
call plug#begin('~/.config/nvim/plugged')
Plug 'cocopon/iceberg.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

colorscheme iceberg

"   Highlighting/color options
hi LineNr ctermfg=gray
hi CursorLineNr ctermfg=green
hi Normal guibg=NONE ctermbg=NONE

lua << END
require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
END
