"   _  ____  _____    _   __   __________  __  ______  _   ________
"  | |/ / / / /   |  / | / /  /_  __/ __ \/ / / / __ \/ | / / ____/
"  |   / / / / /| | /  |/ /    / / / /_/ / / / / / / /  |/ / / __
" /   / /_/ / ___ |/ /|  /    / / / _, _/ /_/ / /_/ / /|  / /_/ /
"/_/|_\____/_/  |_/_/ |_/    /_/ /_/ |_|\____/\____/_/ |_/\____/

"https://www.facebook.com/serayeuem

"https://github.com/xuantruong1612


"""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')

" - Theme -
Plug 'dracula/vim', { 'as': 'dracula' }    " Dracula

" - File browser -
Plug 'preservim/nerdtree'           " File browser
Plug 'Xuyuanp/nerdtree-git-plugin'  " Git status

" - File search -
Plug 'junegunn/fzf', {'do': { -> fzf#install() } } " Fuzzy finder
Plug 'junegunn/fzf.vim'

" - Status bar -
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" - Terminal -
Plug 'voldikss/vim-floaterm'     " Float terminal

" - Code intellisense (Tự hoàn thành code) -
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Language server protocol (LSP)
Plug 'mattn/emmet-vim' 
Plug 'preservim/nerdcommenter'   " Comment code  cc, uncmt  cu

call plug#end()

""""""""""""""""""""""""""""""""""""""""""

" - Theme -
colorscheme dracula

""""""""""""""""""""""""""""""""""""""""""

" - Highlight background -
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

""""""""""""""""""""""""""""""""""""""""""

"- Source file -
source ~/.config/nvim/settings/nerdtree.vim
source ~/.config/nvim/settings/airline.vim
source ~/.config/nvim/settings/fzf.vim
source ~/.config/nvim/settings/floaterm.vim
source ~/.config/nvim/settings/coc.vim
source ~/.config/nvim/settings/options.vim

""""""""""""""""""""""""""""""""""""""""""
function! RunOrOpenFloaterm()
  " Lưu tệp hiện tại
  write
  " Chạy chương trình theo filetype
  if &filetype == 'python'
    execute 'FloatermNew python3 ' . expand('%')
  elseif &filetype == 'c'
    let executable = expand('%:r')  " Lấy tên tệp không có đuôi
    execute 'FloatermNew bash -c "gcc ' . expand('%') . ' -o ' . executable . ' && ./' . executable . '"'
  elseif &filetype == 'cpp'
    let executable = expand('%:r')  " Lấy tên tệp không có đuôi
    execute 'FloatermNew bash -c "g++ ' . expand('%') . ' -o ' . executable . ' && ./' . executable . '"'
  elseif &filetype == 'ruby'
    execute 'FloatermNew ruby ' . expand('%')
  elseif &filetype == 'go'
    execute 'FloatermNew go run ' . expand('%')
  elseif &filetype == 'java'
    let executable = expand('%:r')  " Lấy tên tệp không có đuôi
    execute 'FloatermNew bash -c "javac ' . expand('%') . ' && java ' . executable . '"'
  else
    " Nếu không phải loại file được hỗ trợ, mở Floaterm với terminal
    execute 'FloatermNew bash'
  endif
endfunction

" Gán phím F3 để mở Floaterm hoặc chạy code
nnoremap <silent> <F3> :call RunOrOpenFloaterm()<CR>


" Gán phím F3 để mở Floaterm hoặc chạy code
nnoremap <silent> <F3> :call RunOrOpenFloaterm()<CR>


