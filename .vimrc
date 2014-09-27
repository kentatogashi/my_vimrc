set nocompatible
set expandtab 
set tabstop=2 
set shiftwidth=2 
set softtabstop=2 
set autoindent 
set smartindent 
syntax on

inoremap <silent> jj <ESC>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap <> <><Left>

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
" let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_source_file_mru_limit=200
nnoremap <silent> <Space>uy :<C-u>Unite history/yank<CR>
nnoremap <silent> <Space>ub :<C-u>Unite file_mru buffer<CR>
nnoremap <silent> <Space>uf :<C-u>Unite file buffer<CR>
nnoremap <silent> <Space>uu :<C-u>Unite buffer<CR>

call neobundle#end()

filetype plugin indent on
filetype indent on

NeoBundleCheck
