" Set up Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

" Exclude things from ctrlp
let g:ctrlp_custom_ignore = 'bower_components\|node_modules\|DS_Store\|git\|pyc'

" Settings for React
let g:jsx_ext_required = 0

" Enable eslint via syntastic if it is installed globally
let g:syntastic_javascript_checkers=['eslint']

" Set typical editor file tree on left
let g:netrw_list_hide='^\.,.\(pyc\|pyo\|o\)$'
" let g:netrw_winsize = 25
" let g:netrw_browse_split = 2
let g:netrw_banner = 0
