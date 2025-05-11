vim9script
 
compiler javac
g:disable_bg = 1
g:disable_float_bg = 1
colorscheme moon

def Compile()
	w
	cd %:p:h
	if filereadable('Makefile')
		silent cexpr system('make')
		botright cwindow
	else
	    Cmd javac % && java %:r
	endif
	cd -
enddef

nnoremap <buffer> <silent> <localleader>c  <ScriptCmd>Compile()<Cr>
nnoremap <buffer> <silent> <localleader>r  :Cmd java %:r<Cr>

inoremap <buffer> <c-c>  /**/<left><left>
vnoremap <buffer> <c-c> :norm I//<cr>
