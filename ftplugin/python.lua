vim.cmd([[
function! PyRun()
  call VimuxRunCommand("clear ; cd ".getcwd()."; python3 ".expand('%'))
endfunction




map <Leader>rr :wa<CR> :call PyRun()<CR>
map <Leader>gr :wa<CR> :call PyRun()<CR>
map <f5> :wa<CR> :call PyRun()<CR>
map <f6> :wa<CR> :call PyTest()<CR>
]])
