
" Plugins {{{
filetype off
call plug#begin('~/.vim/plugged')
"all plugins here
Plug 'ervandew/supertab'
Plug 'ap/vim-buftabline'
"Plug 'ajh17/VimCompletesMe'
"airline
"Plug 'bling/vim-airline'
"Plug 'powerline/fonts'
"Plug 'vim-airline/vim-airline-themes'
"
""General
"Plug 'sheerun/vim-polyglot'
"Plug 'jpalardy/vim-slime'
"Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf.vim'
"Plug 'https://github.com/terryma/vim-multiple-cursors'
"Plug 'godlygeek/tabular'
"Plug 'losingkeys/vim-niji'
"Plug 'scrooloose/nerdcommenter'
"Plug 'https://github.com/tristen/vim-sparkup'
""Plug 'https://github.com/Valloric/YouCompleteMe'
""Plug 'https://github.com/Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
""Language clients
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do':{ -> coc#util#install() }}
"Plug 'autozimu/LanguageClient-neovim', {'branch':'next', 'do': 'bash install.sh'}
"Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/jiangmiao/auto-pairs'
""Plug 'Shougo/neocomplete'
"Plug 'Shougo/denite.nvim', {'do': 'cUpdateRemotePlugins'}
"Plug 'vim-scripts/tlib'
"Plug 'bhurlow/vim-parinfer'
"Plug 'scrooloose/syntastic'
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'https://github.com/chrisbra/unicode.vim'
""Snippets
""Snippets
Plug 'SirVer/ultisnips'
Plug 'https://github.com/honza/vim-snippets'
""Plug 'frigoeu/psc-ide-vim'
""Plug 'purescript-contrib/purescript-vim'
""Haskell
"Plug 'https://github.com/bitc/vim-hdevtools'
Plug 'https://github.com/itchyny/vim-haskell-indent'
""Plug 'https://github.com/lukerandall/haskellmode-vim'
Plug 'alx741/vim-hindent'
""F-Sharp
"Plug 'ionide/Ionide-vim', {'do': 'make fsautocomplete'}
""Web
"Plug 'https://github.com/ap/vim-css-color'
""Elm
"Plug 'ElmCast/elm-vim'
""Colorschemes
Plug 'https://github.com/flazz/vim-colorschemes'
"Plug 'https://github.com/felixhummel/setcolors.vim'
"Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
"Plug 'https://github.com/preservim/nerdtree'
"
call plug#end()

" }}}

