vim.cmd([[
function! TerraformValidate()
  call VimuxRunCommand("clear ; cd ".getcwd()."; terraform validate")
endfunction

function! TerraformPlan()
  call VimuxRunCommand("clear ; cd ".getcwd()."; terraform plan")
endfunction





map <Leader>tv :wa<CR> :call TerraformValidate()<CR>
map <Leader>tp :wa<CR> :call TerraformPlan()<CR>
map <f5> :wa<CR> :call TerraformValidate()<CR>
map <f6> :wa<CR> :call TerraformPlan()<CR>
]])
