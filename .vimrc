" vundle config
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jpalardy/vim-slime'
Plugin 'davidhalter/jedi-vim'
call vundle#end()            " required
filetype plugin indent on    " required

" custom config
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
nnoremap <C-l><C-l> :SlimeSendCurrentLine<CR>
