let g:NERDTreeShowBookmarks = 1
let g:NERDTreeWinSize = 25
" trang thai Git
let g:NERDTreeGitStatusCommand = 'git status -z -uhead'
let g:NERDTreeGitPlugin = 1

" F2 to toggle
nnoremap <silent> <F2> :NERDTreeToggle<CR>

" Thoat Nvim neu chi con NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif



