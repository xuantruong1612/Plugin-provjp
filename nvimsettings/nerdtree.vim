" Woking with NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show Book Mark 
" "m" để mở menu và chọn add bookmark
let g:NERDTreeShowBookmarks = 1    " vào file hay dùng
let g:NERDTreeWinSize = 20         " NERDTree chiếm 20%
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapleader
let mapleader = " "
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git status icon
" Modified  Tệp đã bị sửa nhưng chưa được git add
" Staged    Tệp đã được git add, chuẩn bị commit
" Untracked Tệp mới not follow (git add . để theo dõi)
" Renamed   Tệp đã bị đổi tên hoặc di chuyể
" Unmerged  Có xung đột (merge conflict) cần giải quyết
" Deleted   Tệp đã bị xóa và thay đổi chưa được commit
" Dirty     Có thay đổi thư mục working directory
" Ignored   Tệp bị bỏ qua theo .gitignore
" Clean     Không có thay đổi, trạng thái sạch
" Unknown   Trạng thái không xác định
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'MOD',
                \ 'Staged'    :'STAG',
                \ 'Untracked' :'UNTRACKED',
                \ 'Renamed'   :'RENAMED',
                \ 'Unmerged'  :'!',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'DIR',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'CLEAN',
                \ 'Unknown'   :'?',
                \ }
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hightlight current file
let g:nerdtree_synsc_cursorline = 1    " cursor line
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" F2 to toggle
nnoremap <silent> <F2> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Di chuyển giữa Windown
nnoremap <leader>h <C-w>h                  " trái h
nnoremap <leader>j <C-w>j                  " dưới j
nnoremap <leader>k <C-w>k                  " trên k
nnoremap <leader>l <C-w>l                  " phải l
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Thoát Nvim nếu còn mỗi NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
