" TODO: Add command that copies current directory into windows clipboard
"       Add command that executes a specified program. Search backwards til
"       its found. 
set number
set relativenumber

set tabstop=4
set shiftwidth=4
set smartindent

set wrap

" Turn off search highlighting until the next search
set nohlsearch

set laststatus=2

set termguicolors
set t_Co=256
colorscheme drapery

command W write

" Traverse backward through directories searching 
" for a build file, and execute it if found
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
