set nocompatible
set nu
set ts=4
imap jk <Esc>
imap \t θ
imap \a α
imap \b β
imap \pi π


autocmd Filetype go call Install_go_maps()
function Install_go_maps()
		map gd <Esc>:GoDef<CR>
		map gb <Esc>:GoDefPop<CR>
		map gi <Esc>:!cd .. && go install<CR><CR>
		map gt <Esc>:GoTest<CR>
		map gr <Esc>:GoRun<CR>
		map gct <Esc>:GoCoverageToggle<CR>
endfunction

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'fatih/vim-go'
Plugin 'SirVer/ultisnips'
Plugin 'posva/vim-vue'
Plugin 'Chiel92/vim-autoformat'


Plugin 'mattn/emmet-vim'

Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'Shougo/vimproc'

au BufWrite * :Autoformat
let g:airline#extensions#ale#enabled = 1

nnoremap <Leader>ht :GhcModType<cr>
nnoremap <Leader>htc :GhcModTypeClear<cr>
autocmd FileType haskell nnoremap <buffer> <leader>? :call ale#cursor#ShowCursorDetail()<cr>

call vundle#end()
filetype plugin indent on
