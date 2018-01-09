" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'airblade/vim-rooter'
Plugin 'ryanss/vim-hackernews'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'kien/ctrlp.vim'
Plugin 'python-mode/python-mode'
Plugin 'metakirby5/codi.vim'
call vundle#end()            " required
filetype plugin indent on    " required

" MISC
set nu
set clipboard=unnamed
let g:ctrlp_show_hidden = 1
set completeopt=menu
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" NERDTREE CONFIG
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <C-n> :NERDTreeToggle<CR>

" COLORSCHEME
syntax on
colorscheme onedark

" UTF-8 ENCODING
set encoding=utf-8

" PYTHON HIGHLIGHTING
let python_highlight_all=1

" PYTHON MODE
let g:pymode = 1
let g:pymode_lint_on_fly = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
let g:pymode_options_colorcolumn = 1
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_virtualenv = 1
let g:pymode_rope = 1
let g:pymode_rope_rename_bind = '<C-c>rr'
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Space>'

