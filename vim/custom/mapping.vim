let mapleader = " "
let maplocalleader = "\\"

nnoremap <silent> <leader>h :term<CR>
nnoremap <silent> _ :Ex<CR>

nnoremap <silent><Esc><Esc> :nohl <cr>

nnoremap <leader>; q:k
nmap > <C-w>>
nmap < <C-w><
map  <F2> :bp<CR>
map  <F3> :bn<CR>
map  <F4> :bd<CR>
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
inoremap <C-f> <Right>
inoremap <C-d> <Left>
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I
