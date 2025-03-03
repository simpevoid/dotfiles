packadd! matchit
syntax on
"set ruler
filetype plugin indent on 
set cursorline
set splitbelow splitright
set nu rnu
set shiftwidth=4
set autoindent smartindent
"set cinoptions=t0
set textwidth=80
set colorcolumn=80
"set cinoptions=l1
set hlsearch incsearch
set ignorecase smartcase
set hidden
set wildmenu
set wildignore=*.exe,*.pdf,*.git/*
set wildmode=longest:full,full
colorscheme mine

"StatusLine
set laststatus=2        " Always display the status line
set statusline=%f        " Show file path
set statusline+=%h%m%r   " Display flags for file (help, modified, read-only)
set statusline+=%=       " Align the remaining items to the right
set statusline+=%c\,%l\ \ \ \ \ \       " Column/Lines
set statusline+=%p%%\           	" Cursor position percentage

autocmd BufNewFile *.tex 0r ~/.vim/templates/tex_template.tex
source ~/.vim/custom/mappings.vim
runtime ftplugin/man.vim
let g:netrw_banner = 0
let g:netrw_liststyle=3
