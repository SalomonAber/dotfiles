" Skip man-page message
:nnoremap K K<CR>
:vnoremap K K<CR>

" Clang formatting for c and c++
autocmd FileType c,cpp setlocal equalprg=clang-format

" Local replace variable
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" Global replace variable
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

call plug#begin()

Plug 'editorconfig/editorconfig-vim'
Plug 'chriskempson/base16-vim'

call plug#end()

let base16colorspace=256
colorscheme base16-default-dark
