" This is my vimrc
" There are many like it, but this one is mine

" Vundle init
set nocompatible
filetype off " Required for vundle

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on
" Vundle init END

colorscheme molokai
	let g:rehash256 = 1
	let g:molokai_original = 1

syntax on
set number
set wildmenu
set mouse=a

set tabstop=4

set incsearch
set hlsearch

" Highlight active line number
set cursorline
hi CursorLineNR cterm=bold
hi CursorLine term=NONE cterm=NONE guibg=NONE

augroup CLClear " this will clear customizations made by color schemes
	autocmd!
	autocmd ColorScheme * hi CursorLine term=NONE cterm=NONE guibg=NONE
	autocmd ColorScheme * hi CursorLineNR cterm=bold
augroup END

set laststatus=2
let g:airline_theme='powerlineish'
