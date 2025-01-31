"   _  ____  _____    _   __   __________  __  ______  _   ________
"  | |/ / / / /   |  / | / /  /_  __/ __ \/ / / / __ \/ | / / ____/
"  |   / / / / /| | /  |/ /    / / / /_/ / / / / / / /  |/ / / __
" /   / /_/ / ___ |/ /|  /    / / / _, _/ /_/ / /_/ / /|  / /_/ /
"/_/|_\____/_/  |_/_/ |_/    /_/ /_/ |_|\____/\____/_/ |_/\____/

"https://www.facebook.com/serayeuem
"https://github.com/xuantruong1612

""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')

" - Theme -
source ~/.config/nvim/colors/theme.vim                      " Dracula

" - File browser -
Plug 'preservim/nerdtree'                                   " File browser
Plug 'Xuyuanp/nerdtree-git-plugin'                          " Git status

" - File search -
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }    	" Fuzzy finder
Plug 'junegunn/fzf.vim'

" - Status bar -
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" - Terminal -
Plug 'voldikss/vim-floaterm'                               " Float terminal


call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - Theme -
colorscheme dracula

" - Highlight background -
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" - Set up nvim itself -
set noshowmode

""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - Source file -
source ~/.config/nvim/lua/nerdtree.vim
source ~/.config/nvim/lua/vim_airline.vim
source ~/.config/nvim/lua/fzf.vim
source ~/.config/nvim/lua/floaterm.vim


