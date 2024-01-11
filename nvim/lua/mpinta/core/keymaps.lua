--
-- nvim/lua/mpinta/core/keymaps.lua
--

local map = vim.api.nvim_set_keymap

local opts = {
	noremap = true,
	silent = true,
}

-- create shortcut for config file sourcing
map("n", "<C-s>", "<Cmd>source $MYVIMRC<CR>", opts)

-- copy path of the current file to the clipboard
map("n", "<C-c>", "<Cmd>let @+=expand('%:')<CR>", opts)

-- make find next and find previous
-- searching centered on the current line
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- make find next and find previous
-- occurrence centered on the current line
map("n", "#", "#zzzv", opts)
map("n", "*", "*zzzv", opts)

-- switch moving to next blank line
map("n", "{", "<S-}>", opts)
map("n", "}", "<S-{>", opts)

-- open new window vertically
map("n", "<Leader>+", "<Cmd>vnew<CR>", opts)

-- open new window horizontally
map("n", "<Leader>_", "<Cmd>new<CR>", opts)

-- duplicate window vertically
map("n", "<Leader>s", "<Cmd>vsplit<CR>", opts)

-- use "<C+hjkl>" to move between window splits
map("n", "<C-h>", "<Cmd>wincmd h<CR>", opts)
map("n", "<C-j>", "<Cmd>wincmd j<CR>", opts)
map("n", "<C-k>", "<Cmd>wincmd k<CR>", opts)
map("n", "<C-l>", "<Cmd>wincmd l<CR>", opts)

-- use "<" and ">" for vertical window resizing
map("n", "<", "<Cmd>vertical resize +5<CR>", opts)
map("n", ">", "<Cmd>vertical resize -5<CR>", opts)

-- nvim-telescope
map("n", "<Leader>ff", "<Cmd>Telescope find_files<CR>", opts)
map("n", "<Leader>fg", "<Cmd>Telescope git_files<CR>", opts)
map("n", "<Leader>gg", "<Cmd>Telescope live_grep<CR>", opts)
map("n", "<Leader>ht", "<Cmd>Telescope help_tags<CR>", opts)

-- vim-fugitive
map("n", "<Leader>gb", "<Cmd>Git blame<CR>", opts)
map("n", "<leader>gd", "<cmd>Git diff | resize +20<cr>", opts)
map("n", "<Leader>gt", "<Cmd>Git difftool<CR>", opts)
map("n", "<Leader>gs", "<Cmd>Gdiffsplit<CR>", opts)

-- toggleterm
map("n", "<Leader><CR>", "<Cmd>ToggleTerm dir=%:h<CR>", opts)

-- trouble
map("n", "<Leader>tr", "<Cmd>Trouble<CR>", opts)

-- markdown-preview
map("n", "<Leader>md", "<Cmd>MarkdownPreview<CR>", opts)

-- ranger
map("n", "<Leader>ra", "<Cmd>Ranger<CR>", opts)

-- mason
map("n", "<Leader>ma", "<Cmd>Mason<CR>", opts)

-- outln
map("n", "<Leader>o", "<Cmd>Outln<CR>", opts)

-- lazy
map("n", "<Leader>lz", "<Cmd>Lazy<CR>", opts)
