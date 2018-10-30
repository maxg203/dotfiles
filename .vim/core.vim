" let g:pymode_lint = 0
" set foldmethod=syntax
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Fix vim search
set hlsearch
set incsearch

set nocompatible              " be iMproved
set splitright
set splitbelow
set clipboard=unnamed
set tags=tags;/
set omnifunc=syntaxcomplete#Complete
set pastetoggle=<leader>b

" IMproved :e settings
set wildmenu
set wildignore=*.o,*.pyc,*.bak,*.jpg,*.jpeg,*.png,*.gif
set wildmode=list:longest,full
