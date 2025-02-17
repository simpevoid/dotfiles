


vim9script

compiler tex

def Clear()
    w
    cd %:p:h
    silent !latexmk -C
    cd -
    cwindow
    redraw!
enddef

def Compile()
    w
    cd %:p:h
    silent make
    cd -
    cwindow
    redraw!
enddef

def Openpdf()
    const opta = "--synctex-forward "
    const optb = line(".") .. ":" .. col(".") .. ":" .. '%:p'
    const optc = " -c ~/.config/zathura/tex/ "
    exec "silent !zathura '%:p:r'.pdf " .. optc .. opta .. optb .. "& disown" 
enddef


nnoremap <buffer> <localleader>c <ScriptCmd>Compile()<Cr>
nnoremap <buffer> <localleader>r <ScriptCmd>Openpdf()<Cr>
nnoremap <buffer> <localleader>C <ScriptCmd>Clear()<Cr>
##nnoremap <buffer> <localleader>s :so ~/.vim/ftplugin/tex.vim <Cr>
