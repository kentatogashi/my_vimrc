set nocompatible
filetype off
set expandtab 
set tabstop=2 
set shiftwidth=2 
set softtabstop=2 
set autoindent 
set smartindent 
set showcmd
set showmatch
set title
set ruler
set history=10000
set hlsearch
set incsearch
set gdefault
set ignorecase
set smartcase
set backspace=indent,eol,start
set laststatus=2
set cmdheight=2
set scrolloff=8
set sidescrolloff=16
set nobackup
set noswapfile
set autoread
set mouse=a
set cmdheight=2
set number
set cursorline
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
NeoBundle 'kien/ctrlp.vim.git'
NeoBundle 'scrooloose/nerdtree.git'
let NERDTreeShowHidden = 1
nnoremap <silent> <Space>nt :<C-u>NERDTree<CR>
NeoBundle 'tpope/vim-endwise'
NeoBundle 'nathanaelkane/vim-indent-guides'
colorscheme desert 
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#444433 ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#333344 ctermbg=darkgray
let g:indent_guides_guide_size = 1
NeoBundle 'thinca/vim-quickrun'
nnoremap <silent> <Space>qr :<C-u>QuickRun<CR>
NeoBundle 'tpope/vim-rails'
autocmd User Rails nmap :<C-u>Rcontroller :<C-u>Rc
autocmd User Rails nmap :<C-u>Rmodel :<C-u>Rm
autocmd User Rails nmap :<C-u>Rview :<C-u>Rv
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'sudo.vim'

" NeoBundle 'vim-scripts/dbext'
" cd ~/.vim/bundle; git clone https://github.com/vim-scripts/dbext.vim
call neobundle#end()

filetype plugin indent on
filetype indent on

NeoBundleCheck
