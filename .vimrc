" TODO: Add command that copies current directory into windows clipboard
"       Add command that executes a specified program. Search backwards til
"       its found. 
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
	set backspace=2
	set guioptions-=T
	set guioptions-=m
	set guifont=Cascadia_Code:h12
	silent! e R:
endif

set termguicolors
colorscheme drapery
syntax on

" Because I always accidentally try to write when shift is still down.
command W write

" Traverse backward through directories searching 
" for a build file, and execute it if found. 
function Build()
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
	
if has('win32') || has('win32unix')
	command! -nargs=0 Build call Build()
endif
