" Woking with Terminal
""""""""""""""""""""""""""""""""""""""""""""""""
" Floating window
let g:floaterm_position = 'topright'   " Hiện bên phải
let g:floaterm_width = 0.5             " Rộng
let g:floaterm_height = 1.0            " Dài
let g:floaterm_title = 'Terminal $1/$2'
let g:floaterm_wintype = 'float'       " Dạng nổi
if has('win64')
	let g:floaterm_shell = 'powershell -nologo'
endif
""""""""""""""""""""""""""""""""""""""""""""""""
" Size
tnoremap <M-l> <C-\><C-n>:let g:floaterm_width = g:floaterm_width + 0.05<CR>:FloatermUpdate<CR>i
tnoremap <M-h> <C-\><C-n>:let g:floaterm_width = g:floaterm_width - 0.05<CR>:FloatermUpdate<CR>i
""""""""""""""""""""""""""""""""""""""""""""""""
" Set color
hi Floaterm guibg=White            " Màu nền (xám tối)
hi FloatermBorder guifg=Pink guibg=turquoise     " Viền (cam), Nền viền (xanh lá)
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
