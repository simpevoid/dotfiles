let mapleader = "\<Space>"
let maplocalleader = "\\"

nnoremap <silent> <leader>h :term<CR>
nnoremap <leader>pv :Ex<CR>

nnoremap <silent><Esc><Esc> :nohl <cr>


nnoremap <silent> <leader>bn :bn<CR>
nnoremap <silent> <leader>bp :bp<CR>

noremap <leader>; q: 

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


"inoremap <C-e> <C-r>=expand('')<left><left>
inoremap <C-e> <Left>
inoremap <C-r> <Right>

vnoremap <leader>y "+y
vnoremap <leader>d "_d
nnoremap Q <nop>

nnoremap <leader>gs :%s/\<<C-r><C-w>\>//gI<Left><Left><Left>
nnoremap <leader>s :s/\<<C-r><C-w>\>//gI<Left><Left><Left>

nnoremap <silent> <leader>q :call quickfix#toggle()<LF>
nnoremap <silent> <leader>t :call focus#toggle()<LF>

vim9cmd nnoremap <leader>e :call fzy#Fzy("e")<cr>
vim9cmd nnoremap <leader>v :call fzy#Fzy("vs")<cr>
