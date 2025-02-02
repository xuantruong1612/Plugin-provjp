" Woking with FZF
"""""""""""""""""""""""""""""""""""""""""""""

" Files
map <F6> :Files<CR>
map <C-F6> :History<CR>
"""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.5, 'highlight': 'Comment' } }
"""""""""""""""""""""""""""""""""""""""""""""
" Hiển thị màu sắc cho các phần khác nhau
hi! fzf_fg ctermfg=14       " chính
hi! fzf_fgp ctermfg=3       " nổi bật
hi! fzf_hl ctermfg=5        " được chọn
hi! fzf_hlp ctermfg=5
hi! fzf_info ctermfg=6
hi! fzf_prompt ctermfg=6
hi! fzf_spinner ctermfg=6
hi! fzf_pointer ctermfg=3   " con trỏ
"""""""""""""""""""""""""""""""""""""""""""""
" Liên kết
let g:fzf_colors = {
    \ 'fg':      ['fg', 'fzf_fg'],
    \ 'hl':      ['fg', 'fzf_hl'],
    \ 'fg+':     ['fg', 'fzf_fgp'],
    \ 'hl+':     ['fg', 'fzf_hlp'],
    \ 'info':    ['fg', 'fzf_info'],
    \ 'prompt':  ['fg', 'fzf_prompt'],
    \ 'pointer': ['fg', 'fzf_pointer'],
    \ 'spinner': ['fg', 'fzf_spinner'] }
"""""""""""""""""""""""""""""""""""""""""""""
