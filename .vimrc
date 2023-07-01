set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80
highlight ColorColumn ctermbg=2
set number
colorscheme murphy

:syntax on

"Setup netrw
let g:netrw_banner=0
let g:netrw_list_hide= '.*\.swp$,.*\.pyc$,__pycache__,.git'
let g:netrw_liststyle=3
let g:netrw_browse_split=2
let g:netrw_preview=1
let g:netrw_winsize=25
augroup OpenNetRw
    autocmd!
    autocmd VimEnter * if argc() == 0 | Explore! | endif
augroup END

"show file name at bottom
set laststatus=2

if has("clipboard")
	set clipboard=unnamed
	if has("unamedplus")
		set clipboard=unnamedplus
	endif
endif
