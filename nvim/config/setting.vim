" Settings {{{
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set iskeyword+=-                      	" treat dash separated words as a word text object"
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
set shortmess+=c

"set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir        

set path+=**
set noswapfile
set wildmenu
set termguicolors
set nocompatible
set number
set nowrap
set showmode
set tw=80
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=2
set shiftwidth=2
set expandtab
set incsearch
set mouse=a
set history=1000
set hidden
set cmdheight=2
set updatetime=300
set signcolumn=yes 
set relativenumber
"set clipboard=unnamedplus,autoselect

"set completeopt=menuone,menu,noinsert
set completeopt=menuone,menu,longest,noinsert
"set wildmode=longest,list,full
set wildmode=list:full
set completeopt+=longest
"set omnifunc=syntaxcomplete#Complete

set t_Co=256
set background=dark
set ttyfast
"set timeoutlen=250
set listchars=tab:▸\ ,trail:·,extends:#,nbsp:·
set termencoding=utf-8
set encoding=utf-8
set noswapfile

set spell spelllang=nl,en
" }}}

