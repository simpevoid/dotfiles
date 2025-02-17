


"fzy
function! FZY#find()
  try
    let output = system(" find . -type f | fzy ")
  catch /Vim:Interrupt/
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec 'e' . ' ' . output
  endif
endfunction
