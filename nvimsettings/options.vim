" Woking with OPTIONS
""""""""""""""""""""""""""""""""""""""""""""""""

lua print('Neovim started...')
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
set number             " Số dòng
set relativenumber     " Số dòng tương đối
set cursorline         " Highlight dòng hiện tại
set clipboard=unnamed  " Clipboard
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
set termguicolors
autocmd VimEnter * call s:setup_lualine()
function! s:setup_lualine() abort
lua<<EOF
require("bufferline").setup{
  options = {
    indicator = {
      style = 'none',
    },
    diagnostics = "coc",
  }
}
EOF
endfunction

" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Close buffer without exitting vim 
nnoremap <silent> <leader>bd :bp \| sp \| bn \| bd<CR>

" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor
""""""""""""""""""""""""""""""""""""""""""""""""
