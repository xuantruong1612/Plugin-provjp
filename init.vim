"   _  ____  _____    _   __   __________  __  ______  _   ________
"  | |/ / / / /   |  / | / /  /_  __/ __ \/ / / / __ \/ | / / ____/
"  |   / / / / /| | /  |/ /    / / / /_/ / / / / / / /  |/ / / __
" /   / /_/ / ___ |/ /|  /    / / / _, _/ /_/ / /_/ / /|  / /_/ /
"/_/|_\____/_/  |_/_/ |_/    /_/ /_/ |_|\____/\____/_/ |_/\____/

"https://www.facebook.com/serayeuem
"https://github.com/xuantruong1612

""""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=a                " Bật chuột cho Neovim
set expandtab              " Chuyển tab thành khoảng trắng
set tabstop=4              " Độ dài tab là 4 khoảng trắng
set shiftwidth=4           " Kích thước của tab khi thực hiện indent là 4
set listchars=tab:\¦\      " Hiển thị ký tự đặc biệt cho tab
set list                   " Hiển thị các ký tự đặc biệt (như tab, khoảng trắng)
set foldmethod=syntax      " Cách gấp khối mã theo cú pháp
set foldnestmax=1          " Hạn chế mức độ lồng của fold
set foldlevelstart=3       " Mở rộng fold từ level 3
set number                 " Hiển thị số dòng
set ignorecase             " Tìm kiếm không phân biệt chữ hoa/thường
set nobackup               " Không tạo file backup
set nowb                   " Không tạo file backup khi viết
set noswapfile             " Không tạo swapfile
set synmaxcol=3000         " Tối đa 3000 ký tự trước khi syntax highlight bị ngắt
set lazyredraw             " Tối ưu hiệu suất khi vẽ lại

""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')

" - Theme -
source ~/.config/nvim/colors/theme.vim      " Dracula

" - File browser -
Plug 'preservim/nerdtree'                   " File browser
Plug 'Xuyuanp/nerdtree-git-plugin'" Git status

" - File search -
Plug 'junegunn/fzf',
	\ {'do': { -> fzf#install() } }     " Fuzzy finder
Plug 'junegunn/fzf.vim'

" - Status bar -
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" - Terminal -
Plug 'voldikss/vim-floaterm'                " Float terminal

" - Code intellisense -     Tự hoàn thành code
Plug 'neoclide/coc.nvim',
	\ {'branch': 'release'}             " Language server protocol (LSP)
Plug 'jiangmiao/auto-pairs'                 " Parenthesis auto () {} []
" Plug 'mattn/emmet-vim' 
Plug 'preservim/nerdcommenter'              " Comment code  cu, uncmt  cc

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - Theme -
colorscheme dracula

""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - Highlight background -
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - Set up nvim itself -
set noshowmode

""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - Source file -
source ~/.config/nvim/nvimsettings/nerdtree.vim
source ~/.config/nvim/nvimsettings/vim_airline.vim
source ~/.config/nvim/nvimsettings/fzf.vim
source ~/.config/nvim/nvimsettings/floaterm.vim
source ~/.config/nvim/nvimsettings/coc.vim

