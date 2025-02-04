syntax on
runtime ftplugin/man.vim
packadd! matchit
set is
set ruler
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

if has('termguicolors')
    let g:gruvbox_contrast_dark = 'medium' 
    set background=dark    
    "let g:gruvbox_italic = 1
    let g:gruvbox_bold = 1
    let g:gruvbox_underline=1
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
    colorscheme gruvbox
endif

"StatusLine
set laststatus=2        " Always display the status line
set statusline=%f        " Show file path
set statusline+=%h%m%r   " Display flags for file (help, modified, read-only)
set statusline+=%=       " Align the remaining items to the right
set statusline+=%l/%L    " Show current line number and total number of lines
set statusline+=\ \-\ %c " Display column number

autocmd BufNewFile *.tex 0r ~/.vim/templates/tex_template.tex
source ~/.vim/custom/mappings.vim
