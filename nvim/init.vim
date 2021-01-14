source $HOME/.config/nvim/config/setting.vim
source $HOME/.config/nvim/config/mappings.vim
source $HOME/.config/nvim/config/plugins.vim
"source $HOME/.config/nvim/config/plugins/coc.vim
"source $HOME/.config/nvim/config/plugins/airline.vim



filetype plugin indent on
syntax on

let g:SuperTabDefaultCompletionType = 'context'
let g:slime_target="tmux"

tnoremap <Esc> <C-\><C-n>
""colorscheme palenight
colorscheme gruvbox
highlight Pmenu ctermbg=black guibg=black
highlight PmenuSel ctermbg=darkblue guibg=darkblue
let s:width = 80

"COC 

set statusline^=%{coc#status()}


""autocmd FileType html inoremap <buffer> <C-l> <esc>f>a
function SwitchSourceHeader()
  "update!
  if (expand ("%:e") == "cpp")
    vsplit | find %:t:r.hpp
  else
    vsplit | find %:t:r.cpp
  endif
endfunction

" autocommands {{{
"


augroup WindowManagement
  autocmd!
  autocmd WinEnter * call Handle_Win_Enter()
augroup END

autocmd FileType python nmap <buffer> <F5> :terminal ipython -i %<cr>

" Vim file setting {{{
augroup vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

augroup cpp

autocmd FileType cpp nnoremap <buffer> <leader>h :call SwitchSourceHeader()<cr>
  "clear group
  autocmd!
  "autocmd FileType cpp nnoremap <leader>h :find %:t:r.hpp<cr>
  autocmd FileType cpp nnoremap cbuffer> <leader>s :find %:t:r.cpp<cr>
  autocmd FileType cpp inoremap <buffer> <M-i> <esc>I#include <<esc>A>
  autocmd FileType cpp inoremap <buffer> <M-o> <esc>I#include "<esc>A"
  autocmd FileType cpp nnoremap <buffer> <F5> :!make all<cr>
  autocmd FileType cpp nnoremap <buffer> <F6> :!make run<cr>
  autocmd FileType cpp source /home/zanshin/.config/nvim/cpp.vim
augroup END

augroup text
  autocmd FileType text set tw=80
  autocmd FileType text set wrap linebreak
  autocmd BufWritePre *.txt normal magggqG`a 
  autocmd BufNewFile *.txt nnoremap <leader>f magggqG`a

augroup END



autocmd WinEnter * set relativenumber | set number
autocmd WinLeave * set nonumber

" }}}

"For buffers over 9
function! ToBuffer()
  let vcount = v:count
  execute "buffer " . vcount
endfunction

nnoremap ;; :<C-U>call ToBuffer()<cr>
nnoremap <leader>, :Buffers<cr>
nnoremap <leader>. :Buffers<cr><cr>

"Change colors of active/inactive window
hi ActiveWindow guibg=#102040 ctermbg=grey
hi InactiveWindow guibg=#304050 ctermbg=black

function! Handle_Win_Enter()
  setlocal winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
endfunction


