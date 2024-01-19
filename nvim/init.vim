"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc


call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'lervag/vimtex'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'SirVer/ultisnips'
Plug 'sbdchd/neoformat'
Plug 'kassio/neoterm'
Plug 'phaazon/hop.nvim'
Plug 'numToStr/FTerm.nvim'
Plug 'kepano/flexoki-neovim'
call plug#end()

set nocompatible
syntax on
set nu
autocmd TermOpen * setlocal nonumber norelativenumber
autocmd TermOpen * startinsert
autocmd BufWinEnter,WinEnter term://* startinsert
set ts=2
set ai sw=2
set viminfo='20,<1000
set display+=lastline
imap jk <Esc>
tmap jk <C-\><C-N>
map mk <Esc>:w<CR>:!make<CR><CR>
map mc <Esc>:!make clean<CR>
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" recover input position
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

filetype plugin indent on

"hop.nvim
:lua require'hop'.setup()
nmap f :HopChar1CurrentLine<CR>
nmap t :HopWordMW<CR>
nmap <Space> :HopChar2MW<CR>
"hop.nvim

" kepano/flexoki-neovim
set termguicolors
colorscheme flexoki-light
" kepano/flexoki-neovim

" numToStr/FTerm.nvim
nmap wj :lua require("FTerm").toggle()<CR>
tmap wj <C-\><C-n>:lua require("FTerm").toggle()<CR>
" numToStr/FTerm.nvim

"LaTeX begin
let g:tex_flavor='latex' " Default tex file format
let g:vimtex_view_method = 'skim' " Choose which program to use to view PDF file 
let g:vimtex_view_skim_sync = 1 " Value 1 allows forward search after every successful compilation
let g:vimtex_view_skim_activate = 1 " Value 1 allows change focus to skim after command `:VimtexView` is given
let g:vimtex_quickfix_mode=0
let g:vimtex_view_skim_reading_bar = 1
let g:vimtex_view_automatic = 1
"LaTeX end

"neoformat begin
"augroup fmt
"  autocmd!
"  autocmd BufWritePre * undojoin | Neoformat
"augroup END
"neoformat end 

" UltiSnips begin
let g:UltiSnipsExpandTrigger="<tab>"
" 使用 tab 切换下一个触发点，shit+tab 上一个触发点
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" 使用 UltiSnipsEdit 命令时垂直分割屏幕
let g:UltiSnipsEditSplit="horizontal"

imap :wq <esc>:wq<Enter>
" UltiSnips end

" Fterm 
nnoremap wk <esc>:lua require("FTerm").toggle()<CR><Up><CR>
tmap wk <C-\><C-n>:lua require("FTerm").toggle()<CR>
" Fterm 

" Fold BEIGN
nnoremap zj <esc>:foldo!<Enter>
nnoremap zk <esc>:foldc!<Enter>
nnoremap zu <esc>:%foldo!<Enter>
nnoremap zi <esc>:%foldc!<Enter>
" Fold END

" go begin
au FileType go nmap gt <esc>:GoTest<Enter>
au FileType go nmap gi <esc>:GoInstall<Enter>
au FileType go nmap gb <esc>:GoDefPop<Enter>
au FileType go nmap gd <esc>:GoDef<Enter>
let g:go_fmt_command = "goimports" " auto-import used but unimported package
" go end

" julia BEGIN
au FileType julia set foldmethod=syntax
" julia END

au FileType vim nmap PI <esc>:PlugInstall<Enter>
au FileType vim nmap PU <esc>:PlugUpdate<Enter>
au FileType vim nmap PUg <esc>:PlugInstall<Enter>

au FileType tex map vc <Esc>:w<CR>:VimtexCompileSS<CR><CR>
au FileType tex map vv <Esc>:VimtexView<CR><CR>

set clipboard+=unnamedplus
set guicursor=a:block
set cursorline

syntax enable
set background=light

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
