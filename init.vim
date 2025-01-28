"   _  ____  _____    _   __   __________  __  ______  _   ________
"  | |/ / / / /   |  / | / /  /_  __/ __ \/ / / / __ \/ | / / ____/
"  |   / / / / /| | /  |/ /    / / / /_/ / / / / / / /  |/ / / __
" /   / /_/ / ___ |/ /|  /    / / / _, _/ /_/ / /_/ / /|  / /_/ /
"/_/|_\____/_/  |_/_/ |_/    /_/ /_/ |_|\____/\____/_/ |_/\____/


call plug#begin('~/.config/vim/plugged')
"Theme
Plug 'dracula/vim'                     "Dracula

"Airline
Plug 'vim-airline/vim-airline'

" File browser
Plug 'scrooloose/nerdtree'






call plug#end()

colorscheme dracula

" Highlight background transparent background for nvim
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" Powerline font
let g:airline_powerline_fonts = 1

" NERDTree
"press 'm' to call menu 0 cursor position to (add, delete, file)
nnoremap <silent><F2> :NERDTreeFind<CR>
nnoremap <silent><F3> :NERDTreeToggle<CR>

" Set up nvim itseft
set noshowmode















