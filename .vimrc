set nocompatible
filetype off
call pathogen#infect()

" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

set expandtab
set tabstop=2
set shiftwidth=2
set ruler number
set noswapfile
set nobackup
set nowritebackup
set backspace=indent,eol,start

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD Tree related.
" Open NERDTree on start.
" autocmd vimenter * NERDTree
" Quit vim if last non NERDTree window exists.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Go specific.
au BufWritePost *.go silent! !ctags -R 2> /dev/null &
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

highlight Normal guibg=grey90
highlight Cursor guibg=Green guifg=NONE
highlight lCursor guibg=Cyan guifg=NONE
highlight ExtraWhitespace ctermbg=red guibg=red
match Error /\s\+$/
autocmd Filetype python match Error /\s\+$/

map ./ :s/^\(\s*\)/\1\/\//<CR>
map .? :s/^\(\s*\)\/\//\1/<CR>
map .# :s/^\(\s*\)/\1\#/<CR>
map .$ :s/^\(\s*\)\#/\1/<CR>
" match Todo /\%>80v.\+/
set ignorecase

