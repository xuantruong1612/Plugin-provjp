" Woking with Terminal
" hi FloatermNC guibg=darkred       " Non-focused window
""""""""""""""""""""""""""""""""""""""""""""""""
" Được kích hoạt sau khi mở một bộ nổi mới/tồn tại
autocmd User FloatermOpen   
""""""""""""""""""""""""""""""""""""""""""""""""

" Open a new terminal
nnoremap <silent> <F3> :FloatermNew<CR>
tnoremap <silent> <F3> <C-\><C-n>:FloatermNew<CR>

" Tắt terminal
tnoremap <silent>ddd <C-\><C-n>:FloatermKill<CR>:FloatermPrev<CR>

" Điều hướng tiếp theo và thiết bị đầu cuối trước
tnoremap <silent>ll <C-\><C-n>:FloatermNext<CR>

" Toggle terminal
nnoremap <silent> <S-h> :FloatermToggle<CR>
tnoremap <silent> <S-h> <C-\><C-n>:FloatermToggle<CR>

" Focus terminal
" nnoremap <silent> <leader>tf <C-\><C-n><C-W><Left>
" tnoremap <silent> <leader>tf <C-\><C-n><C-W><Left>
""""""""""""""""""""""""""""""""""""""""""""""""
