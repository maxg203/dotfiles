set nocompatible              " be iMproved
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" All plugin commands should stay between vundle#begin/end
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'sjl/gundo.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'jason0x43/vim-js-indent'
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'keith/swift.vim'
Plugin 'mxw/vim-jsx'
Plugin 'jiangmiao/auto-pairs'
Plugin 'posva/vim-vue'

call vundle#end()

filetype plugin indent on

set splitright
set splitbelow
syntax enable

" Set up Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

" Exclude things from ctrlp
let g:ctrlp_custom_ignore = 'bower_components\|node_modules\|DS_Store\|git\|pyc'

" Set up a lovely colour scheme
let g:solarized_style="dark"
let g:solarized_contrast="high"
let g:solarized_termcolors=256
let g:solarized_visibility="high"
let g:airline_theme='dark'
set background=dark
colorscheme solarized

" Settings for React
let g:jsx_ext_required = 0

" Enable eslint via syntastic if it is installed globally
let g:syntastic_javascript_checkers=['eslint']

" let g:pymode_lint = 0
" set foldmethod=syntax
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Fix vim search
set hlsearch
set incsearch

autocmd FileType javascript setlocal sw=2 ts=2 sts=2 expandtab number
autocmd FileType typescript setlocal sw=2 ts=2 sts=2 expandtab number
autocmd FileType javascript.jsx setlocal sw=2 ts=2 sts=2 expandtab number
autocmd FileType tf setlocal sw=2 ts=2 sts=2 expandtab number
autocmd FileType make setlocal sw=4 ts=4 sts=4 nonumber
autocmd FileType zsh setlocal sw=4 sts=4 ts=4 expandtab nonumber
autocmd FileType php setlocal sw=4 ts=4 sts=4 expandtab nonumber
autocmd FileType html setlocal sw=2 ts=2 sts=2 expandtab nonumber
autocmd FileType elm setlocal sw=4 sts=4 ts=4 nonumber
autocmd FileType yaml setlocal sw=2 sts=2 ts=2 expandtab number
autocmd FileType vue syntax sync fromstart
autocmd FileType vue setlocal sw=2 ts=2 sts=2 expandtab number
autocmd FileType tex setlocal sw=2 ts=2 sts=2 expandtab number
autocmd FileType sh setlocal sw=4 ts=4 sts=4 expandtab number

" Automatically compile LateX documents
:autocmd BufWritePost *.tex silent! !pdflatex <afile>

" Highlight long line endings
" TODO: Apply this to Python files only, below is broken
" if &filetype == 'python'
"   augroup vimrc_autocmds
"     autocmd BufEnter * highlight OverLength ctermbg=darkred guibg=#111111
"     autocmd BufEnter * match OverLength /\%80v.*/
"   augroup END
" endif

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

let mapleader=" "

set omnifunc=syntaxcomplete#Complete

"  --- Key bindings ---
set pastetoggle=<leader>b

nnoremap <leader>d iimport pudb; pudb.set_trace()<Esc>
nnoremap <C-U> :GundoToggle<CR>
nnoremap <CR> <nop>

" For local replace
nnoremap gr gd[{V%:s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" Write file using sudo
cmap w!! w !sudo tee > /dev/null %

" Prettify JSON
cmap fj %!python -m json.tool

nnoremap <leader>r :!!<CR>

" IMproved :e settings
set wildmenu
set wildignore=*.o,*.pyc,*.bak,*.jpg,*.jpeg,*.png,*.gif
set wildmode=list:longest,full
let g:netrw_list_hide='^\.,.\(pyc\|pyo\|o\)$'

set clipboard=unnamed
