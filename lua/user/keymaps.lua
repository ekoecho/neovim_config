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

keymap('n', '<Leader><Leader>', ':source $MYVIMRC<CR>', opts)


-- Telescope

keymap('n', '<C-p>', ':Telescope find_files<CR>', opts)
keymap('n', '<Leader>b', ':Telescope buffers<CR>', opts)
keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
keymap('n', '±', ':NvimTreeToggle<CR>', opts)


vim.cmd 'cmap w!! w !sudo tee % >/dev/null'
