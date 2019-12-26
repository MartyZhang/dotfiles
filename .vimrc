set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Git Plugins
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
" Code formatter plugins
Plugin 'google/vim-codefmt'
Plugin 'google/vim-maktaba'
Plugin 'google/glaive'
" Pretty status bar
Plugin 'itchyny/lightline.vim'
" Pretty colours
Plugin 'flazz/vim-colorschemes'
" Buffer plugin
Plugin 'jlanzarotta/bufexplorer'
" Filesearch
Plugin 'junegunn/fzf'
" Abbreviations for Html Editing
Plugin 'mattn/emmet-vim'
" Shell commands for vim
Plugin 'tpope/vim-eunuch'
" Its in the name
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'editorconfig/editorconfig-vim'
" Autocomplete and Syntax Checking
Plugin 'valloric/youcompleteme'
Plugin 'dense-analysis/ale'

call vundle#end()
call glaive#Install()
Glaive codefmt gofmt_executable="goimports"
"{{{ Clang Format
Glaive codefmt clang_format_style="{
  \ BasedOnStyle: Google,
  \  ColumnLimit: 100 }"
"}}}

" Ale fixers
let g:ale_fixers = {
\ '*': ['trim_whitespace'],
\ 'c++': ['clang-format'],
\ }
filetype plugin on
syntax on
set number

" Tab settings
set tabstop=4 noexpandtab shiftwidth=4

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py' 
let g:ycm_always_populate_location_list = 1

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

