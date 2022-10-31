set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'lervag/vimtex'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'SirVer/ultisnips'
Plug 'sbdchd/neoformat'
Plug 'kassio/neoterm'
Plug 'phaazon/hop.nvim'
call plug#end()

filetype plugin indent on

"LaTeX begin
let g:tex_flavor = 'latex'
"LaTeX end

"neoformat begin
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
"neoformat end 

" UltiSnips begin
let g:UltiSnipsExpandTrigger="<tab>"
" 使用 tab 切换下一个触发点，shit+tab 上一个触发点
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" 使用 UltiSnipsEdit 命令时垂直分割屏幕
let g:UltiSnipsEditSplit="horizontal"

imap :wq <esc>:wq<Enter>
cmap sedit UltiSnipsEdit
" UltiSnips end

" go begin
au FileType go nmap gt <esc>:GoTest<Enter>
au FileType go nmap gi <esc>:GoInstall<Enter>
" go end


set clipboard+=unnamedplus
set guicursor=a:block
set cursorline

syntax enable
set background=dark

" General
set number  " Show line numbers
set wrap
set linebreak " Break lines at word (requires Wrap lines)
set display+=lastline

"set showbreak=+++ " Wrap-broken line prefix
set textwidth=0 " Line wrap (number of cols)
set spelllang=en_us " My default language is American English
set grepprg=~/.vim/scripts/ack
set showmatch " Highlight matching brace
set visualbell  " Use visual bell (no beeping)
 
set hlsearch  " Highlight all search results
set smartcase " Enable smart-case search
set ignorecase  " Always case-insensitive
set incsearch " Searches for strings incrementally
 
set autoindent  " Auto-indent new lines
set expandtab " Use spaces instead of tabs
set shiftwidth=2  " Number of auto-indent spaces
set smartindent " Enable smart-indent
set smarttab  " Enable smart-tabs
set softtabstop=2 " Number of spaces per Tab
 
" Advanced
set ruler " Show row and column ruler information
 
set undolevels=10000 " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour

set mouse=a " activate mouse

set statusline+=%F
