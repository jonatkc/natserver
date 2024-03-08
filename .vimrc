" Set compatability to Vim only 
" set nocompatible 


""""""""""""""""""""""""""
"        Plugins         "
""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }

" Plug 'https://github.com/nvim-telescope/telescope.nvim'

call plug#end()

""""""""""""""""""""""""""
"     Basic Config       "
""""""""""""""""""""""""""
syntax on 
syntax enable
set mouse=a               " Use mouse
set number                " Show line numbers
set laststatus=2          " Status bar
set tabstop=2 expandtab   " Set tab to space

""""""""""""""""""""""""""
"   status bar config    "
""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='deus'

""""""""""""""""""""""""""
"      File Handling     "
""""""""""""""""""""""""""
set nocompatible
set wildmenu              " enable tab auto complete 
set path+=**              " Look into sub directories

""""""""""""""""""""""""""
" Built in Vim file tree "
""""""""""""""""""""""""""
inoremap <c-\> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-\> <Esc>:Lex<cr>:vertical resize 30<cr>

""""""""""""""""""""""""""
" Moving through buffers "
""""""""""""""""""""""""""
nnoremap bn :bnext<cr>
nnoremap bp :bprevious<cr>
  
""""""""""""""""""""""""""
"     FZF Plugin         "
""""""""""""""""""""""""""
nnoremap <c-f> :Files<cr>
nnoremap gb :Buffers<cr>


"set relativenumber           " Show relative line numbers
