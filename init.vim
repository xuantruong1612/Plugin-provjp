"   _  ____  _____    _   __   __________  __  ______  _   ________
"  | |/ / / / /   |  / | / /  /_  __/ __ \/ / / / __ \/ | / / ____/
"  |   / / / / /| | /  |/ /    / / / /_/ / / / / / / /  |/ / / __
" /   / /_/ / ___ |/ /|  /    / / / _, _/ /_/ / /_/ / /|  / /_/ /
"/_/|_\____/_/  |_/_/ |_/    /_/ /_/ |_|\____/\____/_/ |_/\____/


call plug#begin('~/.config/nvim/plugged')

source ~/.config/nvim/colors/theme.vim

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

colorscheme dracula



" highlight background
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

source ~/.config/nvim/lua/nerdtree.vim
source ~/.config/nvim/lua/vim_airline.vim



