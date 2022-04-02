set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'sainnhe/gruvbox-material'
Plugin 'bufexplorer.zip'
Plugin 'preservim/tagbar'
Plugin 'tibabit/vim-templates'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'itchyny/lightline.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf.vim'
Plugin 'let-def/ocp-indent-vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'valloric/youcompleteme'
Plugin 'vim-syntastic/syntastic'
Plugin 'w0rp/ale'

call vundle#end()

filetype plugin on
syntax on
au FileType ocaml setlocal expandtab
set number
set tabstop=4

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ocaml_checkers = ['merlin']


" Close preview after autocomplete
autocmd CompleteDone * pclose
" Custom mappings
let mapleader = ","
nnoremap <Leader>bt :BufExplorer<CR> 
nnoremap <Leader>yd :YcmCompleter GoToDefinition<CR> 
nnoremap <Leader>yf :YcmCompleter FixIt<CR> 
nnoremap <Leader>yd :YcmCompleter GoToReferences<CR> 
nnoremap <Leader>gg :TagbarToggle<CR>
nnoremap <Leader><C-o> :FZF<CR>
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h
vnoremap <C-K> :FormatLines<CR>
if has('termguicolors')
 	set termguicolors
 endif
let g:gruvbox_material_background = 'soft'
colorscheme gruvbox-material
set bg=light
set backspace=indent,eol,start
