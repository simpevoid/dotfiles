


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
    const optb = "~/.config/zathura/tex"
    const optc = expand('%:p:r') .. ".pdf"
    const optd = "--synctex-forward"
    const opte = line(".") .. ":" .. col(".") .. ":" .. expand('%:p')
    const cmd = [proc, opta, optb, optc, optd, opte]
    job_start(cmd, {"err_cb": OnError})
enddef


nnoremap <buffer> <localleader>c <ScriptCmd>Compile()<Cr>
nnoremap <buffer> <localleader>r <ScriptCmd>Openpdf()<Cr>
nnoremap <buffer> <localleader>C <ScriptCmd>Clear()<Cr>
##nnoremap <buffer> <localleader>s :so ~/.vim/ftplugin/tex.vim <Cr>
