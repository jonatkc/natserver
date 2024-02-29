" Set compatability to Vim only 
" set nocompatible 

syntax enable
set laststatus=2
set expandtab
set tabstop=2
" Use mouse
set mouse=a

" Show line numbers
set number

" #### File Handling
set nocompatible
set wildmenu 

" #### Built in Vim file tree
inoremap <c-f> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-f> <Esc>:Lex<cr>:vertical resize 30<cr>

" #### Look into sub directories
set path+=**

" Show relative line numbers
"set relativenumber

" Status bar
" set laststatus=2
