"   _  ____  _____    _   __   __________  __  ______  _   ________
"  | |/ / / / /   |  / | / /  /_  __/ __ \/ / / / __ \/ | / / ____/
"  |   / / / / /| | /  |/ /    / / / /_/ / / / / / / /  |/ / / __
" /   / /_/ / ___ |/ /|  /    / / / _, _/ /_/ / /_/ / /|  / /_/ /
"/_/|_\____/_/  |_/_/ |_/    /_/ /_/ |_|\____/\____/_/ |_/\____/


call plug#begin('~/.config/nvim/plugged')

" -Theme-
source ~/.config/nvim/colors/theme.vim

" -Nerdtree-
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" -Airline-
Plug 'vim-airline/vim-airline'

call plug#end()

" -Theme-
colorscheme dracula

" -Highlight background-
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" -Set up nvim itself-
set noshowmode

"=====================================================

" -Source file-
source ~/.config/nvim/lua/nerdtree.vim
source ~/.config/nvim/lua/vim_airline.vim



