set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80
highlight ColorColumn ctermbg=2
set number

:syntax on

"hide folders in netrw listing
let g:netrw_list_hide= '.*\.swp$,.*\.pyc$,__pycache__,.git'
let g:netrw_liststyle=3

"show file name at bottom
set laststatus=2

if has("clipboard")
	set clipboard=unnamed
	if has("unamedplus")
		set clipboard=unnamedplus
	endif
endif
