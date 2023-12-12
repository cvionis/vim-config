" TODO: 
"  - Fix broken vimrc when using vim in cmd

set number
set relativenumber
set cursorline
set wrap

set tabstop=4
set shiftwidth=4
set smartindent

set laststatus=2

" gvim-specific settings
if has("gui_running")
	silent! e R:
	set backspace=2
	set guioptions-=T
	"set guioptions-=m
	set guioptions-=L
	set guioptions+=!
	set guifont=Consolas:h14

	highlight Cursor gui=reverse guifg=NONE guibg=NONE
	set guicursor=n-v-c-i:block-Cursor

	syntax on
endif

set termguicolors
colorscheme drapery

function SetCwd()
	let new_cwd = expand('%:p:h')
	execute 'cd ' . new_cwd
endfunction

" An ugly hack to open a terminal window 
" that allows me to use MSVC's compiler.

function CmdDevInput()
	call feedkeys('call C:\"Program Files"\"Microsoft Visual Studio"\2022\Community\VC\Auxiliary\Build\vcvarsall.bat x64 > nul && clear')
	call feedkeys("\<CR>")
endfunction

function OpenCmdDevSplit()
	bel vnew | term
	call CmdDevInput()
endfunction

function OpenCmdDevTab()
	tab term
	call CmdDevInput()
endfunction

" Traverse backwards through directories searching 
" for a build file (assuming it's a standard batch 
" file that calls cl), and executing it if found. 
function BuildFromFile()
	let build_file = 'build.bat'
	let build_path = globpath('.', build_file) 
	let back = '..\\'
	let dir_limit = 4 * 3

	if !build_path
		while 1
			if len(globpath(back, build_file)) > 1
				let build_path = back . build_file
				break
			else
				let back .= '..\\'
			endif

			if strlen(back) > dir_limit
				echom 'vimrc (Build): could not find build.bat'
				return 
			endif
		endwhile

		let cmd = '!echo "pushd ' . back . ' & ' . build_file . ' & popd ' . '" | cmd'
		execute cmd
	endif
endfunction

" When opening any file, set the current working 
" directory to that of the file.
autocmd BufNewFile,BufRead * call SetCwd()

if has('win32') || has('win32unix')
	" Building from gvim
	if has("gui_running")
		command! -nargs=0 Build  call OpenCmdDevSplit()
		command! -nargs=0 Bt 	 call OpenCmdDevTab()
	" Building from vim in cmd
	else 
		command! -nargs=0 Build call BuildFromFile()
	endif
endif

command W write
command Quit silent! e .  | call SetCwd()
