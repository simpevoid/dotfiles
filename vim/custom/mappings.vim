let mapleader = "\<Space>"
let maplocalleader = ","

nnoremap <silent> <leader>h :term<CR>
nnoremap <leader>pv :Ex<CR>

nnoremap <silent><Esc><Esc> :nohl<cr>

nnoremap <silent> <leader>n :bn<CR>
nnoremap <silent> <leader>b :bp<CR>

noremap <leader>; q: 

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
nnoremap <localleader>c <c-w><c-c>

"inoremap <C-e> <C-r>=expand('
inoremap <C-d> <Left>
inoremap <C-f> <Right>
inoremap <C-e> <Left>
"inoremap <C-r> <Right>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

vnoremap <leader>d "_d
vnoremap  <silent> <leader>y  "+y:let @"=@0<CR>

nnoremap Q <nop>
nnoremap <leader>s :s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>gs :%s/\<<C-r><C-w>\>//gI<Left><Left><Left>
nnoremap <leader>s :s/\<<C-r><C-w>\>//gI<Left><Left><Left>

nnoremap <silent> <leader>q :call quickfix#toggle()<LF>
nnoremap <silent> <localleader>s :call spell#toggle()<LF>


nnoremap <leader>e  :call FZY#find()<cr>
nnoremap <leader>er :call FZY#find("find . -type f", ":vs")<cr>
nnoremap <leader>ed :call FZY#find("find . -type f", ":sp")<cr>
