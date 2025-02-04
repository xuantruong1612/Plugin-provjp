" Woking with OPTIONS
""""""""""""""""""""""""""""""""""""""""""""""""

" Mapleader
let mapleader = " "
""""""""""""""""""""""""""""""""""""""""""""""""
" Mouse
set mouse=a            
"""""""""""""""""""""""""""""""""""""""""""""""
" Mode
set noshowmode
""""""""""""""""""""""""""""""""""""""""""""""""
" Tùy chọn giao diện (UI)
set number                 " Số dòng
set relativenumber         " Số dòng tương đối
set cursorline             " Highlight dòng hiện tại
set clipboard=unnamedplus  " Clipboard
set colorcolumn=90
""""""""""""""""""""""""""""""""""""""""""""""""
" Editing
set expandtab          " Thay tab = khoảng trắng
set tabstop=4          " Tab (Nor)
set softtabstop=4      " Lùi Tab (Ins)
set shiftwidth=4       " Thụt lề = >>, <<
set wrap               " Mở rộng dòng
""""""""""""""""""""""""""""""""""""""""""""""""
" Search
set ignorecase         " K phân biệt hoa/thường
set incsearch          " Hiển thị KQ k cần Enter
""""""""""""""""""""""""""""""""""""""""""""""""
" Disable backup
set nobackup
set nowb
set noswapfile
""""""""""""""""""""""""""""""""""""""""""""""""
" () {} []
nnoremap (( bi(<Esc>ea)<Esc>
nnoremap {{ bi{<Esc>ea}<Esc>
nnoremap [[ bi[<Esc>ea]<Esc>
""""""""""""""""""""""""""""""""""""""""""""""""
