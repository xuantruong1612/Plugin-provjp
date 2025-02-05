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
