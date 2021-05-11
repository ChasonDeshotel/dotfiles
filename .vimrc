set autochdir
syntax on
color blue

set nowrap
"filetype off

set bs=2 " fix backspace on mac
set ts=2
set shiftwidth=0
set tabstop=2
set softtabstop=2
set nu

" install vim-plug if it doesn't exist
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'TaDaa/vimade'
let g:vimade = {}

"if has('mac')
"	Plug 'junegunn/vim-xmark', { 'do': 'make' }
"endif

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'scrooloose/nerdtree'

" theme
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'dikiaap/minimalist'

call plug#end()

let g:airline_powerline_fonts = 1
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Run PlugInstall if there are missing plugins
if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" homebrew location
if has('mac')
	set rtp+=/usr/local/opt/fzf
endif

"
" theme
"
"highlight Normal ctermbg=None
"highlight LineNr ctermfg=DarkGrey
let g:material_theme_style='darker'
let g:material_terminal_italics=1
let g:airline_theme='material'
color material
color minimalist

if (has('termguicolors'))
  set termguicolors
endif

" fix italics in iTerm
if has('mac')
	if !has('nvim')
		let &t_ZH="\e[3m"
		let &t_ZR="\e[23m"
	endif
endif
