set nocompatible
syntax on

set nu
set relativenumber
set noerrorbells

set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set smartindent
set autoindent
set nowrap

set undofile
set undodir=~/.vim/undodir
set incsearch
set hlsearch

set ttimeout		" time out for key codes
set ttimeoutlen=100	" wait up to 100ms after Esc for special key

set colorcolumn=80

highlight ColorColumn ctermbg=0 guibg=lightgrey

set foldopen-=block
setlocal foldmethod=syntax
set foldlevel=99
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
set cursorline
set foldnestmax=1

call plug#begin('~/.vim/plugged')
	Plug 'preservim/nerdtree'
	Plug 'Valloric/YouCompleteMe'
call plug#end()

colorscheme gruvbox
set background=dark

let g:cpp_member_highlight = 1
let g:ycm_confirm_extra_conf = 0
set completeopt-=preview

set tags+=~/.vim/tags,.tags

set wildmenu		" display completion matches in a status line
set path+=$PWD/**

runtime! ftplugin/man.vim
nmap <S-k> :Man <C-r><C-w><CR>
