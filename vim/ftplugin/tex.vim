


vim9script

compiler tex


#def Quickfix()
	#const previous_window = win_getid()
	#botright cwindow
	#redraw
      #call win_gotoid(previous_window)
#enddef



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
    const optc = expand('%:p:r') .. ".pdf"
    const optd = "--synctex-forward"
    const opte = line(".") .. ":" .. col(".") .. ":" .. expand('%:p')
    const cmd  = [proc, opta, optb, optc, optd, opte]

    if !filereadable('master.tex')
    job_start(cmd, {"err_cb": OnError})
    else 
    job_start([proc, opta, optb,  "master.pdf", optd, opte], {"err_cb": OnError})
    endif
enddef


nnoremap <buffer> <localleader>c <ScriptCmd>Compile()<Cr>
nnoremap <buffer> <localleader>r <ScriptCmd>Openpdf()<Cr>
nnoremap <buffer> <silent><leader>c :norm I%<cr>
vnoremap <buffer> <silent><leader>c :norm I%<cr>
##nnoremap <buffer> <localleader>s :so ~/.vim/ftplugin/tex.vim <Cr>
