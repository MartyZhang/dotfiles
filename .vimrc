set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Git Plugins
Plugin 'airblade/vim-gitgutter'
" Code formatter plugins
Plugin 'google/glaive'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-maktaba'
" Pretty status bar
Plugin 'editorconfig/editorconfig-vim'
Plugin 'itchyny/lightline.vim'
" Pretty colours
Plugin 'flazz/vim-colorschemes'
" Buffer plugin
Plugin 'jlanzarotta/bufexplorer'
" Filesearch
Plugin 'w0rp/ale'
" Abbreviations for Html Editing
Plugin 'mattn/emmet-vim'
" Shell commands for vim
Plugin 'tpope/vim-eunuch'
" Its in the name
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'valloric/youcompleteme'
Plugin 'vim-syntastic/syntastic'
call vundle#end()
call glaive#Install()
Glaive codefmt gofmt_executable="gofmt"
"{{{ Clang Format
Glaive codefmt clang_format_style="{
  \ BasedOnStyle: Google,
  \ ColumnLimit: 80 }"
"}}}

" Ale fixers
let g:ale_fixers = {
\ '*': ['trim_whitespace'],
\ 'c++': ['clang-format'],
\ }
filetype plugin indent on
syntax on
set number
set tabstop=4

" Tab settings
autocmd FileType txt setlocal tabstop=2 shiftwidth=2 expandtab 

" YouCompleteMe Settings
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py' 
let g:ycm_always_populate_location_list = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Close preview after autocomplete
autocmd CompleteDone * pclose

" Custom mappings
let mapleader = ","
nnoremap <Leader><C-o> :FZF<CR> 
nmap <C-o> <C-x><C-o>
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h
nnoremap <Leader>gd :YcmCompleter GoTo <CR>
nnoremap <Leader>gr :YcmCompleter GoToReferences <CR>
nnoremap <Leader>gt :YcmCompleter GoToType <CR>
nnoremap <Leader>yf :YcmCompleter FixIt <CR>
vnoremap <C-K> :FormatLines<CR> 
colorscheme gruvbox
set backspace=indent,eol,start

