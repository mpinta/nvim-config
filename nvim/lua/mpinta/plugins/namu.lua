--
-- nvim/lua/mpinta/plugins/namu.lua
--

local namu = require("namu")

namu.setup({
    namu_symbols = {
        enable = true,
        options = {
            custom_keymaps = {
                vertical_split = {
                    keys = { "<C-s>" },
                },
            },
        },
    },
    movement = {
        next = { "<C-j>", "<DOWN>" },
        previous = { "<C-k>", "<UP>" },
    },
})
