packadd! matchit
syntax on
"set ruler
filetype plugin indent on 
set textwidth=80
set colorcolumn=80
set cursorline
set splitbelow
set splitright
set relativenumber
set number
set shiftwidth=4
set cinoptions=l1
set autoindent
set smartindent
set hlsearch
set incsearch
set ignorecase
set smartcase
set wildmenu
set hidden
set wildignore=*.exe,*.dll,*.pdb
set wildmode=longest:full,full
set bg=dark
colorscheme new

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
