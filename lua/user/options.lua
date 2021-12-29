local options = {
	history = 1000,     -- Have a command history of 1000
	hlsearch = true,    -- Highlight search results
	number = true,      -- Enable line numbers
	grepprg = "rg",     -- Use ripgrep for grepping
	undofile = true,    -- Enable persistent undo
	undodir = vim.fn.expand("~/.local/shared/nvim/undo"),
	-- rnu = true,      -- enable relative line numbering
	wrap = false,       -- Dont wrap lines
	incsearch = true,   -- Enable incremental search 
	termguicolors = true, -- Enable true colors in terminal
	expandtab = true, 
	shiftwidth = 2,
	softtabstop = 2,
	tabstop = 2,
  autoindent = true,
  smartindent = true,
  smarttab = true,
  scrolloff = 3,      -- lines to keep visible before and after cursor
  sidescrolloff = 7,  -- Columns to keep visible before and after cursor
  sidescroll = 1,     -- Smoother horizontal scrolling
  updatetime=300,      -- Faster completion time	


}

for k, v in pairs(options) do
	vim.opt[k] = v
end


-- In case of fat fingers when trying to save

vim.cmd[[
com W w
com Wq wq
com WQ wq
com Q q
]]

