nnoremap <leader>d iimport pudb; pudb.set_trace()<Esc>
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

nnoremap <C-W>k :resize +6<CR>
nnoremap <C-W>j :resize -6<CR>
nnoremap <C-W>h :vertical resize +15<CR>
nnoremap <C-W>l :vertical resize -15<CR>

" Tmux runner
let g:VtrUseVtrMaps = 1
nnoremap <leader>ar :VtrAttachToPane<cr>
nnoremap <leader>rc :VtrSendCommandToRunner<cr>
nnoremap <leader>cc :VtrFlushCommand<cr>

" Go to tab number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

nnoremap <C-x>h :tabprevious<CR>
nnoremap <C-x>l :tabnext<CR>
