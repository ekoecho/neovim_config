vim.cmd([[
function! GoRun()
  call VimuxRunCommand("clear ; cd ".getcwd()."; go run .")
endfunction


function! GoTest()
  call VimuxRunCommand("clear ; cd ".getcwd()."; go test -v")
endfunction


map <Leader>rr :wa<CR> :call GoRun()<CR>
map <Leader>gr :wa<CR> :call GoRun()<CR>
map <Leader>rt :wa<CR> :call GoTest()<CR>
map <Leader>gt :wa<CR> :call GoTest()<CR>
map <f5> :wa<CR> :call GoRun()<CR>
map <f6> :wa<CR> :call GoTest()<CR>
]])
