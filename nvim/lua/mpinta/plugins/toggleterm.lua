--
-- nvim/lua/mpinta/plugins/toggleterm.lua
--

local toggleterm = require("toggleterm")

local map = vim.api.nvim_buf_set_keymap

local opts = {
    noremap = true,
    silent = true,
}

toggleterm.setup({
    direction = "float",
    hide_numbers = true,
    close_on_exit = true,
})

-- handle "<C+hjkl>" to move between
-- window splits when toggleterm is open
function _G.set_terminal_keymaps()
    map(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
    map(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
    map(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
    map(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
end
