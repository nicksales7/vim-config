let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Remap for markdown preview
let g:markdown_preview_active = 0

function! ToggleMarkdownPreview()
  if g:markdown_preview_active == 0
    execute 'MarkdownPreview'
    let g:markdown_preview_active = 1
  else
    execute 'MarkdownPreviewStop'
    let g:markdown_preview_active = 0
  endif
endfunction

nnoremap \mm :call ToggleMarkdownPreview()<CR>

" Set compatibility to Vim only, ignoring Vi compatibility when possible
set nocompatible

" Enable file type detection and plugin system
filetype plugin on
filetype indent on

" Autoclose 
inoremap ( ()<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap \( \(\)<Esc>i
inoremap \{ \{\}<Esc>i
inoremap \[ \[\]<Esc>i

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
set conceallevel=1
let g:tex_conceal='abdmg'

" Theme
Plug 'nanotech/jellybeans.vim'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Coq
Plug 'whonore/Coqtail'

" Lean
Plug 'Julian/lean.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'

call plug#end()

" Theme
syntax on
colorscheme jellybeans
