vim9script

comp gcc
setlocal shiftwidth=4
setlocal cinoptions=t0
setlocal textwidth=80

#colorscheme mine
set makeprg=cc\ -Wall\ -Wextra\ -o\ %:r\ %

def Compile()
    w
    cd %:p:h
    silent make
    redraw!
    cwindow
    cd -
enddef

nnoremap <buffer><silent> <leader>c  <ScriptCmd>Compile()<Cr>
nnoremap <buffer><silent> <leader>r  :Cmd ./%:r<cr>

command -nargs=1 Src call src#Help(<q-args>)
nmap <silent><c-s> :Src <cword><cr>
