let mapleader = "\<Space>"
let maplocalleader = "\\"

nnoremap <silent> <leader>h :term<CR>
nnoremap <leader>pv :Ex<CR>

nnoremap <silent><Esc><Esc> :nohl <cr>


nnoremap <leader>bd :bp \| bd #<CR>
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
"inoremap <C-r> <Right>

vnoremap <leader>y "+y
vnoremap <leader>d "_d
nnoremap Q <nop>

nnoremap <leader>gs :%s/\<<C-r><C-w>\>//gI<Left><Left><Left>
nnoremap <leader>s :s/\<<C-r><C-w>\>//gI<Left><Left><Left>

nnoremap <silent> <leader>q :call quickfix#toggle()<LF>
nnoremap <silent> <leader>t :call focus#toggle()<LF>

vim9cmd nnoremap <leader>e :call fzy#Fzy("e")<cr>
vim9cmd nnoremap <leader>v :call fzy#Fzy("vs")<cr>
