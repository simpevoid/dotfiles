setlocal nobuflisted 
setlocal rnu


let g:netrw_liststyle = 0
let g:netrw_list_hide = &wildignore
"let g:netrw_banner = 0

nmap <buffer>q  :bd<cr>
vmap <buffer>mf :norm mf<cr>
vmap <buffer>mm :norm mm<cr>
vmap <buffer>mt :norm mt<cr>

vmap <buffer>d mfD
