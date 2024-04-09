let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Set compatibility to Vim only, ignoring Vi compatibility when possible
set nocompatible

" Enable file type detection and plugin system
filetype plugin on
filetype indent on

" Autoclose 
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap \( \(\)<Esc>i
inoremap \{ \{\}<Esc>i


" Set encoding to UTF-8
set encoding=utf-8

" Set tab spacing
set tabstop=4
set shiftwidth=4
set expandtab

" Show line numbers and set relative numvers
set number
set relativenumber

" Highlight the current line
set cursorline

" Enable mouse support in all modes
set mouse=a

" Set backspace to behave more intuitively
set backspace=indent,eol,start

" Enable search highlighting and incremental search
set hlsearch
set incsearch

" Ignore case when searching, unless uppercase is used
set ignorecase
set smartcase

" Enable the status line always
set laststatus=2

" Set command-line height to 2 lines for more visibility
set cmdheight=2

" Enable 24-bit RGB color support
set termguicolors

" Set auto indentation
set autoindent
set smartindent

" Enable clipboard support (requires Vim compiled with +clipboard)
set clipboard=unnamedplus

" Set undo file to remember undo history between sessions
set undofile
set undodir=~/.vim/undodir

" Set split window directions
set splitbelow
set splitright

" Set up a wildmenu for command line completion
set wildmenu

" Reduce update time for more responsive UI
set updatetime=300

" Turn off swap files
set noswapfile

" Plugins 
call plug#begin('~/.vim/plugged')

" Vimtex
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Onedark Theme
Plug 'joshdick/onedark.vim'

" Ultisnips
Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Theme
syntax on
colorscheme onedark



