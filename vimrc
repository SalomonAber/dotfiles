call plug#begin()

Plug 'editorconfig/editorconfig-vim'
Plug 'chriskempson/base16-vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'w0rp/ale'

call plug#end()

" Wean myself off the arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Drastic escape key mapping
inoremap jj <Esc>

" Set colorscheme
colorscheme base16-default-dark

" Skip man-page message
:nnoremap K K<CR>
:vnoremap K K<CR>

" Clang formatting for c and c++
autocmd FileType c,cpp setlocal equalprg=clang-format

" Local replace variable
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" Global replace variable
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" Prettier format code
nmap <Leader>p <Plug>(Prettier)

" Add line numbers
set number

" Run eslint for js
let g:ale_fixers = {
   \ 'javascript': ['eslint']
 \ }

" Fix linting issues on save
let g:ale_fix_on_save = 1

" Always show gutter
let g:ale_sign_column_always = 1

" Set Spell(Bad|Cap) colors
let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"
hi SpellBad guisp=red gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE term=underline cterm=undercurl ctermul=red
hi SpellCap guisp=yellow gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE term=underline cterm=undercurl ctermul=yellow
