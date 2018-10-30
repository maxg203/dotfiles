filetype off

let mapleader=" "

so ~/.vim/plugins.vim
so ~/.vim/color_scheme.vim
so ~/.vim/core.vim
so ~/.vim/file_types.vim
so ~/.vim/keymaps.vim
so ~/.vim/third_party.vim

syntax enable

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
