" .vimrc - inspired by https://github.com/chrishunt

" init pathogen
execute pathogen#infect()
filetype plugin indent on

set encoding=utf-8        " set encoding to utf-8
set relativenumber        " enable relative line numbers
syntax enable             " enable syntax highlighting
set autoindent            " enable auto indentation
set ts =4                 " set tabstop to 4 whitespaces
set shiftwidth=4          " set indent to 4 whitespaces
set expandtab             " use whitespaces instead of tabs
set cursorline            " highlight current line
set incsearch             " show search results instantaneously
set hlsearch              " visually highlight all search results
set mouse=a               " enable mouse support
set ruler                 " show current row and column in footer

set background=dark       " set dark background
colorscheme solarized     " set cholorscheme to solarized

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
