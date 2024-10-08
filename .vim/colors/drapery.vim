set background=dark

hi clear
let g:colors_name = 'drapery'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 2 ? &t_Co : 1

hi Normal guifg=#aaaaaa guibg=#202020 guisp=NONE gui=NONE ctermfg=230 ctermbg=234 cterm=NONE

" Keywords and other important structural elements 

hi Operator 	 guifg=#cccccc guibg=NONE guisp=NONE gui=NONE ctermfg=133 ctermbg=NONE cterm=bold
hi Keyword 		 guifg=#777777 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=bold
hi Identifier    guifg=#cccccc guibg=NONE guisp=NONE gui=NONE ctermfg=182 ctermbg=NONE cterm=NONE
hi Conditional   guifg=#dddddd guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=bold
hi Repeat 		 guifg=#dddddd guibg=NONE 	 guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=bold
hi Label 		 guifg=#dddddd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=bold
hi Delimiter 	 guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Statement     guifg=#dddddd guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=bold
hi Function      guifg=#777777 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=bold

" Markup-related stuff and comments

hi Comment       guifg=#9f4f4f guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi Todo 		 guifg=#9f4f4f guibg=NONE guisp=#48464a gui=NONE ctermfg=103 ctermbg=239 cterm=NONE

" Literals and types 

hi Character     guifg=#dddddd guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi SpecialChar   guifg=#dddddd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi String        guifg=#dddddd guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Constant      guifg=#dddddd guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Float         guifg=#dddddd guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Number        guifg=#dddddd guibg=NONE guisp=NONE gui=NONE ctermfg=182 ctermbg=NONE cterm=NONE
hi Boolean       guifg=#dddddd guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE

hi Type 		   guifg=#cccccc guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=bold
hi Typedef 		 guifg=#aaaaaa guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=bold
hi Structure 	 guifg=#aaaaaa guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=bold

" Macros and preprocessor directives

hi Macro         guifg=#cccccc guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PreProc       guifg=#cccccc guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi Include       guifg=#cccccc guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Define 		 guifg=#cccccc guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE

" Diffs

hi DiffText      guifg=NONE guibg=#a67dba guisp=#a67dba gui=NONE ctermfg=NONE ctermbg=139 cterm=NONE
hi DiffChange    guifg=#FFFFFF guibg=#deb9bb guisp=#deb9bb gui=NONE ctermfg=5 ctermbg=181 cterm=NONE
hi DiffAdd       guifg=NONE guibg=#193224 guisp=#193224 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi DiffDelete    guifg=NONE guibg=#192224 guisp=#192224 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE

" Errors and messages

hi Error 		 guifg=NONE guibg=NONE guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi ErrorMsg 	 guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi WarningMsg    guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi ModeMsg       guifg=#F9F9F9 guibg=#192224 guisp=#192224 gui=NONE ctermfg=15 ctermbg=235 cterm=bold
hi MoreMsg 		 guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=bold

" Status line

hi StatusLine    guifg=#aaaaaa guibg=#2d2d2d guisp=#674a87 gui=NONE ctermfg=23 ctermbg=60 cterm=bold
hi StatusLineNC  guifg=#aaaaaa guibg=#2d2d2d  guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=bold

" Tab line

hi TabLine       guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=bold
hi TabLineFill   guifg=#192224 guibg=#78747d guisp=#78747d gui=NONE ctermfg=235 ctermbg=8 cterm=bold
hi TabLineSel    guifg=#ccb2cc guibg=#694a87 guisp=#694a87 gui=NONE ctermfg=182 ctermbg=96 cterm=bold

" Cursor 

hi Cursor 		 guifg=#192224 guibg=#9fcf4f guisp=#202020 gui=NONE ctermfg=235 ctermbg=15 cterm=NONE
hi CursorLine    guifg=NONE guibg=#2d2d2d guisp=#202020 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi CursorLineNr  guifg=#9f4f4f guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi CursorColumn  guifg=NONE guibg=#202020 guisp=#202020 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE

" Miscellaneous 

hi LineNr 		 guifg=#525252 guibg=NONE guisp=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE
hi NonText 	 	 guifg=bg ctermfg=bg

hi Folded 		 guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi FoldColumn 	 guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi Visual 		 guifg=#888888 guibg=NONE guisp=#F9F9FF gui=NONE ctermfg=235 ctermbg=189 cterm=NONE
hi VertSplit 	 guifg=#202020 guibg=#202020 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=bold
hi PMenu 		 guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi MatchParen 	 guifg=#FFFFFF guibg=NONE 	 guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=bold
hi Directory 	 guifg=#9fcf4f guibg=NONE 	 guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=bold
hi Underlined 	 guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline

