set nocompatible
syntax on
set nu
set ts=2
set ai sw=2
set viminfo='20,<1000
set display+=lastline
imap jk <Esc>
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
