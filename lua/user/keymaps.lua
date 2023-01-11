local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


keymap("n", "<esc>", ":noh<return><esc>", opts)

keymap("n", "Y", "yy", opts)

keymap("n", "<A-Left>", "<C-w>h", opts)
keymap("n", "<A-Right>", "<C-w>l", opts)

-- changing buffers
keymap("n", "<C-l>", ":bnext<CR>", opts)
keymap("n", "<C-h>", ":bprevious<CR>", opts)
keymap("n", "<C-T>c", ":bd", opts)

keymap("n", "<C-s>", ":wa<cr>", opts)


keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<C-g>", "<cmd>Telescope live_grep<cr>", opts)

keymap("v", "++", "<plug>NERDCommenterToggle", opts)
keymap("n", "++", "<plug>NERDCommenterToggle", opts)

keymap("n", "<C-H>", "<Plug>(wintabs_previous)", opts)
keymap("n", "<C-h>", "<Plug>(wintabs_previous)", opts)
keymap("n", "<C-L>", "<Plug>(wintabs_next)", opts)
keymap("n", "<C-T>c", "<Plug>(wintabs_close)", opts)
keymap("n", "<C-T>u", "<Plug>(wintabs_undo)", opts)
keymap("n", "<C-T>o", "<Plug>(wintabs_only)", opts)
keymap("n", "<C-W>c", "<Plug>(wintabs_close_window)", opts)
keymap("n", "<C-W>o", "<Plug>(wintabs_only_window)", opts)
