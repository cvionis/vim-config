set background=dark

hi Normal guifg=#cccccc guibg=#181818 guisp=#17111c gui=NONE ctermfg=230 ctermbg=234 cterm=NONE

" Keywords and other important structural elements 

hi Operator 	 guifg=#cccccc guibg=NONE guisp=NONE gui=bold ctermfg=133 ctermbg=NONE cterm=bold
hi Keyword 		 guifg=#674a87 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Identifier    guifg=#debae3 guibg=NONE guisp=NONE gui=NONE ctermfg=182 ctermbg=NONE cterm=NONE
hi Conditional   guifg=#7a6e8a guibg=NONE guisp=NONE gui=bold ctermfg=144 ctermbg=NONE cterm=bold
hi Repeat 		 guifg=#7a6e8a guibg=NONE 	 guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Label 		 guifg=#7a6e8a guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Delimiter 	 guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Statement     guifg=#654a87 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Function      guifg=#cccccc guibg=NONE guisp=NONE gui=bold ctermfg=103 ctermbg=NONE cterm=bold

" Markup-related stuff and comments

hi Comment       guifg=#828282 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi Todo 		 guifg=#a399b0 guibg=#48464a guisp=#48464a gui=NONE ctermfg=103 ctermbg=239 cterm=NONE

" Literals and types 

hi Character     guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi SpecialChar   guifg=#756c87 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi String        guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Constant      guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Float         guifg=#7db743 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Number        guifg=#7db743 guibg=NONE guisp=NONE gui=NONE ctermfg=182 ctermbg=NONE cterm=NONE
hi Boolean       guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE

hi Type 		 guifg=#cccccc guibg=NONE guisp=NONE gui=bold ctermfg=103 ctermbg=NONE cterm=bold
hi Typedef 		 guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Structure 	 guifg=#654a87 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold

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

hi Error 		 guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi ErrorMsg 	 guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi WarningMsg    guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi ModeMsg       guifg=#F9F9F9 guibg=#192224 guisp=#192224 gui=bold ctermfg=15 ctermbg=235 cterm=bold
hi MoreMsg 		 guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold

" Lines? 

hi StatusLine    guifg=#220e35 guibg=#674a87 guisp=#674a87 gui=bold ctermfg=23 ctermbg=60 cterm=bold
hi StatusLineNC  guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold

hi TabLine       guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
hi TabLineFill   guifg=#192224 guibg=#78747d guisp=#78747d gui=bold ctermfg=235 ctermbg=8 cterm=bold
hi TabLineSel    guifg=#ccb2cc guibg=#694a87 guisp=#694a87 gui=bold ctermfg=182 ctermbg=96 cterm=bold

hi LineNr 		 guifg=#525252 guibg=NONE guisp=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE

" Cursor 

hi Cursor 		 guifg=#192224 guibg=#F9F9F9 guisp=#F9F9F9 gui=NONE ctermfg=235 ctermbg=15 cterm=NONE
hi CursorLine    guifg=NONE guibg=#2d2d2d guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi CursorLineNr  guifg=#7db743 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi CursorColumn  guifg=NONE guibg=#222E30 guisp=#222E30 gui=bold ctermfg=NONE ctermbg=236 cterm=NONE

" Miscellaneous crap

hi Folded 		 guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi FoldColumn 	 guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi Visual 		 guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=NONE ctermfg=235 ctermbg=189 cterm=NONE
hi VertSplit 	 guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
hi PMenu 		 guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi MatchParen 	 guifg=#FFFFFF guibg=NONE 	 guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Directory 	 guifg=#536991 guibg=NONE 	 guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Underlined 	 guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
