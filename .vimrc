set nocompatible
set nu
set ts=4
imap jk <Esc>

autocmd Filetype go call Install_go_maps()
function Install_go_maps()
		map gd <Esc>:GoDef<CR>
		map gb <Esc>:GoDefPop<CR>
		map gi <Esc>:GoInstall<CR>
		map gt <Esc>:GoCoverageToggle<CR>
endfunction

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'fatih/vim-go'
Plugin 'SirVer/ultisnips'
Plugin 'posva/vim-vue'
Plugin 'Chiel92/vim-autoformat'
au BufWrite * :Autoformat

Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin indent on
