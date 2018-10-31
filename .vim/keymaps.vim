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
