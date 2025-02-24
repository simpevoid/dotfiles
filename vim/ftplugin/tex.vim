


vim9script

compiler tex

def Clear()
    w
    cd %:p:h
    silent !latexmk -C
    cd -
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

def OnError(channel_name: channel, msg: string)
    echoerr msg
enddef

def Openpdf()
    const proc = "zathura"
    const opta = "-c"
    const optb = "~/.config/zathura/tex/"
    const optc = "-l"
    const optd = "warning"
    const opte = expand('%:p:r') .. ".pdf"
    const optf = "--synctex-forward"
    const optg = line(".") .. ":" .. col(".") .. ":" .. expand('%:p')
    const cmd  = [proc, opta, optb, optc, optd, opte, optf, optg]

    if !filereadable('master.tex')
    job_start(cmd, {"err_cb": OnError})
    else 
    job_start([proc, opta, optb, optc, optd, "master.pdf", optf, optg], {"err_cb": OnError})
    endif
enddef


nnoremap <buffer> <localleader>c <ScriptCmd>Compile()<Cr>
nnoremap <buffer> <localleader>r <ScriptCmd>Openpdf()<Cr>
nnoremap <buffer> <localleader>C <ScriptCmd>Clear()<Cr>
##nnoremap <buffer> <localleader>s :so ~/.vim/ftplugin/tex.vim <Cr>
