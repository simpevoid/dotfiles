let mapleader = "\<Space>"
let maplocalleader = "\\"

nnoremap <silent> <leader>h :term<CR>
nnoremap <leader>pv :Ex<CR>

nnoremap <silent><Esc><Esc> :nohl <cr>

noremap <leader>; q: 
nmap > <C-w>>
nmap < <C-w><

vnoremap <leader>y "+y
vnoremap <leader>d "_d
nnoremap Q <nop>

map  <F2> :bp<CR>
imap <F2> <Esc>:bp<CR>
tmap <F2> <C-W>:bp<CR>

map  <F3> :bn<CR>
imap <F3> <Esc>:bn<CR>
tmap <F3> <C-W>:bn<CR>

map   <F4> :bd<CR>
imap  <F4> <Esc>:bd<CR>
tmap  <F4> <C-W>:bd!<CR>

map  <F7> :cp<CR>
imap <F7> <Esc>:cp<CR>
map  <F8> :cn<CR>
imap <F8> <Esc>:cn<CR>

nnoremap <leader>gs :%s/\<<C-r><C-w>\>//gI<Left><Left><Left>
nnoremap <leader>s :s/\<<C-r><C-w>\>//gI<Left><Left><Left>
nnoremap <silent> <leader>q :call quickfix#toggle()<LF>
nnoremap <silent> <leader>t :call focus#toggle()<LF>
vim9cmd nnoremap <leader>e :call fzy#Fzy("e")<cr>
vim9cmd nnoremap <localleader>v :call fzy#Fzy("vs")<cr>
vim9cmd nnoremap <localleader>s :call fzy#Fzy("s")<cr>
