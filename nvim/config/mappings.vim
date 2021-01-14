
" Mappings {{{
let mapleader=","

let maplocalleader="\\"

nnoremap <leader>rc :source %<cr>
vnoremap <leader>rc y:@"<cr>
nnoremap <leader>erc :e ~/.config/nvim/init.vim<cr>

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

inoremap jj <Esc>

"map <leader>1 :b1<cr>
"map <leader>2 :b2<cr>
"map <leader>3 :b3<cr>
"map <leader>4 :b4<cr>
"map <leader>5 :b5<cr>
"map <leader>6 :b6<cr>
"map <leader>7 :b7<cr>
"map <leader>8 :b8<cr>
"map <leader>9 :b9<cr>
"map <leader>0 :b10<cr>
"map <leader>, :ls<cr>:b<space>
"nnoremap <leader>q :w <bar> bd <cr>
nnoremap <leader>q :bd! <cr>
"map <leader>I :set list!<cr>

nnoremap <c-p> :Files<cr>
nnoremap <a-g> :exec "vimgrep ".input("Grep: ")." *" <bar> copen<cr>
nnoremap <F1> :CocCommand explorer<cr>
nnoremap <space>h :bprevious<cr>
nnoremap <space>l :bnext<cr>
inoremap <silent><expr> <c-space> coc#refresh()
" }}}


"inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<CR>"
"
"inoremap <silent><expr> <TAB>
"    \ pumvisible() ? "\<c-n>" :
"    \ <SID>check_back_space() ? "\<TAB>" :
"    \ coc#refresh()
"
"inoremap <expr><S-TAB> pumvisible() ? "\<c-p>" : "\<c-h>"
"
"function! s:check_back_space() abort
"	let col = col('.') - 1
"	return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

nmap <silent> [c <Plug> (coc-diagnostic-prev)
nmap <silent> ]c <Plug> (coc-diagnostic-next)

nmap <silent> gd <Plug> (coc-definition)
nmap <silent> gy <Plug> (coc-type-definition)
nmap <silent> gi <Plug> (coc-implementation)
nmap <silent> gr <Plug> (coc-references)

nnoremap <silent> K :call <SID>show_documentation()<cr>

function! s:show_documentation()
  if (index(['vim', 'help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


