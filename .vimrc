set nocompatible
syntax on
set nu
set ts=2
set ai sw=2
imap jk <Esc>
map mm <Esc>:!make<CR>

" recover input position
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

autocmd Filetype go call Install_go_maps()
function Install_go_maps()
	map gd <Esc>:GoDef<CR>
	map gb <Esc>:GoDefPop<CR>
	map gi <Esc>:GoInstall<CR>
	map gt <Esc>:GoTest<CR>
	map gr <Esc>:GoRun<CR>
	map gct <Esc>:GoCoverageToggle<CR>
endfunction

autocmd Filetype julia call Install_julia_maps()
function Install_julia_maps()
	map gr <Esc>:! julia m.jl<CR>
endfunction



filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'fatih/vim-go'

Plugin 'Chiel92/vim-autoformat'
Plugin 'SirVer/ultisnips'

Plugin 'posva/vim-vue'

Plugin 'mxw/vim-jsx'

Plugin 'JuliaEditorSupport/julia-vim'

call vundle#end()
filetype plugin indent on

" Plugin 'Chiel92/vim-autoformat'
let b:formatdef_clangformat = "'clang-format -lines='.a:firstline.':'.a:lastline.' --assume-filename=\"'.expand('%:p').'\" -style=llvm'"
au BufWrite * :Autoformat
autocmd FileType vim,vue,js,snippets let b:autoformat_autoindent=0 " disable plugin
" End    'Chiel92/vim-autoformat'

let g:go_version_warning = 0

" snippets
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-tab>"

" vim-jsx
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
" vim-jsx END
