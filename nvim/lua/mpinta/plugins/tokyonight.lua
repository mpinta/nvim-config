--
-- nvim/lua/mpinta/plugins/tokyonight.lua
--

local tokyonight = require("tokyonight")

tokyonight.setup({
    style = "storm",
    light_style = "day",
    styles = {
        comments = {
            italic = true,
        },
        keywords = {
            italic = true,
        },
        functions = {
            bold = true,
        },
    },
    lualine_bold = true,
})

-- set tokyonight colorscheme
vim.cmd("colorscheme tokyonight")
