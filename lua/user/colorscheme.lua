vim.cmd [[
set termguicolors
try
  let g:gruvbox_contrast_dark='hard'
  let g:gruvbox_bold=1
  colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
highlight Comment cterm=italic gui=italic
]]
