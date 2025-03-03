

vim9script


def Compile()
	w
	cd %:p:h
	ter ++shell javac % && java %:r
	cd -
enddef


inoremap <buffer> <c-c>  /**/<left><left>
nnoremap <buffer> <c-c> :norm I//<cr>
nnoremap <buffer> <silent><leader>cd :norm ^xx<cr>
nnoremap <buffer> <silent><localleader>c  <ScriptCmd>Compile()<Cr>
