local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

keymap("n", "<Leader><Leader>", ":source $MYVIMRC<CR>", opts)

-- Telescope

keymap("n", "<C-p>", ":Telescope find_files<CR>", opts)
keymap("n", "<Leader>b", ":Telescope buffers<CR>", opts)
keymap("n", "<Leader>p", ":Telescope projects<CR>", opts)
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "<leader>af", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "<space>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
keymap("n", "<space>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "±", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>f", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>-", ":split<CR>", opts)
keymap("n", "<leader>|", ":vsplit<CR>", opts)
keymap("n", "<leader>a", ":Alpha<CR>", opts)
keymap("n", "<leader>s", ":SymbolsOutline<CR>", opts)

vim.cmd("cmap w!! w !sudo tee % >/dev/null")
