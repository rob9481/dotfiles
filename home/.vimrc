" indent wrapped lines 4 chars after indentation of beginning of lines starting
" with backtick, dash, (at least one) hash, or (at least one) digit period
set breakindent breakindentopt=list:2,shift:2
set formatlistpat=^\\s*\\(`\\\|-\\\|#\\+\\\|\\d\\+\\.\\?\\)\\s\\+
set linebreak " dont break in middle of word
set number " mostly to show line continuations

colorscheme habamax
au ColorScheme * hi! Normal ctermbg=NONE guibg=NONE
syntax on

set autoindent smartindent
set expandtab shiftwidth=2 softtabstop=2 tabstop=2
set hidden                                   " allow buffers to remain in background
set hlsearch incsearch ignorecase
set noexrc nomodelineexpr                    " disable attack vectors
set splitbelow splitright
set noswapfile                               " disable periodic snapshots (.*.swp files)
set whichwrap=b,s,h,l,<,>
set wildmode=list:longest                    " complete to uncommon character
let mapleader="\<Space>"
let maplocalleader=","
let g:netrw_sort_sequence='[\/]$'            " show directories first in netrw

cmap w!! w !sudo tee % >/dev/null|           " write with sudo if forgot while opening
nnoremap ; :|                                " enter command mode with ';' too!!!
vnoremap . :norm.<CR>|                       " redo last action, i.e. '.' for visual mode
nnoremap <leader>T :set list!<CR>|           " toggle whitespace
nnoremap <leader>E :echo expand('%:p')<CR>|  " show path to file
nnoremap <leader><leader> :let @/ = ""<CR>|  " clear highlighted search pattern
nnoremap <c-w><c-c> <nop>|                   " disable close tab
nnoremap <c-w>t :call OpenInTab()<CR>|       " open split in new tab
nnoremap <leader>H :h quickref<CR>|          " open quickref help

au FileType lisp setlocal iskeyword+=-
au FileType tcl setlocal keywordprg=:Man\ n
au FileType xml setlocal syntax=off nowrap

"au BufRead,BufNewFile *.json {
"  set ft=jsonc
"  syn clear jsonTrailingCommaError
"}
au FileType jsonc syn clear jsonTrailingCommaError " see ${RTP}/syntax/jsonc.vim
