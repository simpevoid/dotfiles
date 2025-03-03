


vim9script

def Compile()
	w
	cd %:p:h
	term ++shell cc % -o %:r -Wall -Wextra && ./%:r
	cd -
enddef

set shiftwidth=8
set cinoptions=t0

inoremap <buffer> <c-c>  /**/<left><left>
nnoremap <buffer> <c-c> :norm I//<cr>
nnoremap <buffer> <silent><leader>cd :norm ^xx<cr>
nnoremap <buffer> <silent><localleader>c  <ScriptCmd>Compile()<Cr>
#vnoremap <leader>v  do/*<cr>*/<esc>P}kxxx
