--
-- nvim/lua/mpinta/plugins/nvim-tree.lua
--

local tree = require("nvim-tree")

tree.setup({
    view = {
        width = 30,
    },
    filters = {
        dotfiles = true,
        custom = {
            "^.git$"
        },
    },
})
