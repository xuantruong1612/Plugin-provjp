" Woking with Terminal
""""""""""""""""""""""""""""""""""""""""""""""""

" Floating window
let g:floaterm_position = 'topright'   " Hiện bên phải
let g:floaterm_width = 0.6             " Rộng
let g:floaterm_height = 0.8            " Dài
let g:floaterm_title = 'Terminal $1/$2'
let g:floaterm_wintype = 'float'       " Dạng nổi
let g:floaterm_rootmarkers = ['.pro']
if has('win32')
	let g:floaterm_shell = 'powershell -nologo'
endif
""""""""""""""""""""""""""""""""""""""""""""""""
" Set color
hi Floaterm guibg=Grey15            " Màu nền (xám tối)
hi FloatermBorder guifg=Orange guibg=DarkGreen     " Viền (cam), Nền viền (xanh lá)
" hi FloatermNC guibg=darkred       " Non-focused window
""""""""""""""""""""""""""""""""""""""""""""""""
" Được kích hoạt sau khi mở một bộ nổi mới/tồn tại
autocmd User FloatermOpen   
""""""""""""""""""""""""""""""""""""""""""""""""

" Open a new terminal           " space + to
nnoremap <silent> <leader>to :FloatermNew<CR><script>
tnoremap <silent> <leader>to <C-\><C-n>:FloatermNew<CR>

" Tắt terminal
nnoremap <silent> <leader>tk :FloatermKill<CR>:FloatermPrev<CR>
tnoremap <silent> <leader>tk <C-\><C-n>:FloatermKill<CR>:FloatermPrev<CR>

" Điều hướng tiếp theo và thiết bị đầu cuối trước
nnoremap <silent> <leader>tn :FloatermNext<CR>
tnoremap <silent> <leader>tn <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <leader>tp :FloatermPrev<CR>
tnoremap <silent> <leader>tp <C-\><C-n>:FloatermPrev<CR>

" Toggle terminal
nnoremap <silent> <leader>tt :FloatermToggle<CR>
tnoremap <silent> <leader>tt <C-\><C-n>:FloatermToggle<CR>

" Focus terminal
nnoremap <silent> <leader>tf <C-\><C-n><C-W><Left>
tnoremap <silent> <leader>tf <C-\><C-n><C-W><Left>
""""""""""""""""""""""""""""""""""""""""""""""""
