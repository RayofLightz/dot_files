call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'slashmili/alchemist.vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'preservim/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'digitaltoad/vim-pug'
Plug 'wsdjeg/vim-fetch'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

let g:airline_theme='badwolf'

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_filetype_map = { "javascriptreact": "javascript" }

let g:vim_jsx_pretty_highlight_close_tag = 1

set number
syntax on
set nowrap
set tabstop=4
set expandtab
set wildmenu
set showmatch
set incsearch
set hlsearch
set lazyredraw

set t_Co=256

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

nnoremap <Space>k gg
nnoremap <Space>j G
nnoremap <Space>h ^
nnoremap <Space>l $
nnoremap <Space>f :NERDTree<Return>
nnoremap <Space>b %


autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

autocmd FileType javascript set softtabstop=2
autocmd FileType javascript set tabstop=2
autocmd FileType javascript set shiftwidth=2

autocmd FileType javascriptreact set softtabstop=2
autocmd FileType javascriptreact set tabstop=2
autocmd FileType javascriptreact set shiftwidth=2
