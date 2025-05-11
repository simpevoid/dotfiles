vim9script

def Cmd(...args: list<string>)
	if exists("t:pterm") && buflisted(t:pterm)
		exe "bdelete! " .. t:pterm
	endif
	const command = join(args, ' ')
	execute "bot terminal ++shell " .. "bash -i -c " .. "'" command .. "'"
	const t:pterm = bufnr('%')
enddef

command! -nargs=+ -complete=shellcmdline Cmd call Cmd(<f-args>)
nnoremap  <leader>x :Cmd<space>
