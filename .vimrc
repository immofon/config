set nocompatible
set nu
set ts=2
set ai sw=2
imap jk <Esc>
imap \t θ
imap \a α
imap \b β
imap \pi π
map mm <Esc>:!make<CR>


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

Plugin 'Chiel92/vim-autoformat'
Plugin 'honza/vim-snippets'

Plugin 'posva/vim-vue'

Plugin 'mxw/vim-jsx'

call vundle#end()
filetype plugin indent on

" Plugin 'Chiel92/vim-autoformat'
let b:formatdef_clangformat = "'clang-format -lines='.a:firstline.':'.a:lastline.' --assume-filename=\"'.expand('%:p').'\" -style=llvm'"
au BufWrite * :Autoformat
autocmd FileType vim,tex,vue,js let b:autoformat_autoindent=0 " disable plugin
" End    'Chiel92/vim-autoformat'

let g:go_version_warning = 0

" vim-jsx
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
" vim-jsx END
