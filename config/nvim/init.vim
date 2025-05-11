lua require('plugins')
lua require('user.gruber')
lua require('user.dired')
set nu rnu
set history=200
if has('gui_running')
    set guifont=Iosevka\ Nerd\ Font\ Mono:h19
    colorscheme gruber-darker
else
    set mouse=
    colorscheme moon
endif

syntax on

filetype plugin indent on 
set shiftwidth=4
set textwidth=80
set splitbelow splitright
set autoindent smartindent

set cursorlineopt=number
set ignorecase smartcase
set cursorline
set noshowcmd
set guicursor=n-v-c-i:block

set shm+=I
set wildmenu
set wildoptions=fuzzy
set hidden
set wildignore=*.git/*

set gp=git\ grep\ -n
set statusline=%<%t\ %h%w%m%r%=%-14.(%l,%c%V%)\ %P

let mapleader = " "
let maplocalleader = "\\"


nnoremap <silent><Esc><Esc> :nohl <cr>

nnoremap <silent> _ :Dired %<CR>

nnoremap <leader>; q:k

map  <F2> :bp<CR>
map  <F3> :bn<CR>
map  <F7> :cp<CR>
map  <F8> :cn<CR>

nnoremap =ap ma=ap`a
vnoremap <leader>y "+y
vnoremap <leader>d "_d
nnoremap Q <nop>
nnoremap <leader>gs :%s/\<<C-r><C-w>\>//gI<Left><Left><Left>
nnoremap <leader>s :s/\<<C-r><C-w>\>//gI<Left><Left><Left>

nnoremap <silent> <leader>q :call quickfix#toggle()<LF>

"emacs
inoremap <C-Space> <Space>
inoremap <C-f> <right>
inoremap <C-b> <left>
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I
lua require('user.cmd')
