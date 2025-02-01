" Woking with COC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tắt cảnh báo khi coc.nvim khởi động
let g:coc_disable_startup_warning = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extensions need to be installed at first startup
" Danh sách các extension sẽ được cài đặt khi khởi động lần đầu
let g:coc_global_extensions = [
      \'coc-css',
      \'coc-html',
      \'coc-json',
      \'coc-jedi',
      \'coc-vimlsp',
      \]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
" Đảm bảo rằng các tệp tin được xử lý với mã hóa UTF-8
set encoding=utf-8
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Some servers have issues with backup files, see #649
" Ngừng tạo các tệp sao lưu khi chỉnh sửa
set nobackup
set nowritebackup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
" Giảm thời gian làm mới (mặc định là 4000ms)
set updatetime=300
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
" Luôn hiển thị cột dấu (sign column) để văn bản không bị dịch chuyển khi xuất hiện các chẩn đoán lỗi
set signcolumn=yes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <TAB> kích hoạt danh sách hoàn thành nếu có, hoặc thêm một tab nếu không có đề xuất
" <S-TAB> di chuyển ngược lại trong danh sách hoàn thành.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <CR> chấp nhận mục được chọn trong danh sách hoàn thành
" <C-g>u breaks current undo, please make your own choice
" <C-g>u Vim sẽ phá vỡ (break) trạng thái hoàn tác (undo) hiện tại
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use <c-space> to trigger completion
" <c-space> (hoặc <c-@> cho Vim) kích hoạt danh sách hoàn thành thủ công
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GoTo code navigation
" Điều hướng Code
nmap <silent> gd <Plug>(coc-definition)       " di chuyển tới định nghĩa của một symbol
nmap <silent> gy <Plug>(coc-type-definition)  " di chuyển tới định nghĩa kiểu (type definition)
nmap <silent> gi <Plug>(coc-implementation)   " di chuyển tới các triển khai (implementations)
nmap <silent> gr <Plug>(coc-references)       " di chuyển tới các tham chiếu (references)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR> " hiển thị tài liệu cho symbol dưới con trỏ, nếu có

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)       " thay đổi tên của symbol

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)  " định dạng mã đã chọn
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
" áp dụng các hành động mã cho phần mã đã chọn hoặc tại con trỏ
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap keys for applying refactor code actions
" kích hoạt hành động tái cấu trúc Code
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Run the Code Lens action on the current line
" chạy hành động Code Lens trên dòng hiện tại
nmap <leader>cl  <Plug>(coc-codelens-action)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)           " chọn các đối tượng hàm (function)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)           " chọn các đối tượng hàm (function)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)          " chọn các đối tượng lớp (class)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)          " chọn các đối tượng lớp (class)
omap ac <Plug>(coc-classobj-a)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap <C-f> and <C-b> to scroll float windows/popups
" <C-f> và <C-b> sẽ cuộn các cửa sổ nổi nếu chúng có nội dung có thể cuộn được
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
" Dòng trạng thái được cập nhật với tên hàm hiện tại và trạng thái của coc.nvim
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
