--
-- nvim/lua/mpinta/plugins/catppuccin.lua
--

local catppuccin = require("catppuccin")

catppuccin.setup({
    background = {
        light = "latte",
        dark = "macchiato",
    },
    integrations = {
        cmp = true,
        mason = true,
        markdown = true,
        gitgutter = true,
        treesitter = true,
    },
    telescope = {
        enabled = true,
    },
    native_lsp = {
        enabled = true,
        virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
        },
        underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
        },
        inlay_hints = {
            background = true,
        },
    },
})

-- set catppuccin colorscheme
vim.cmd("colorscheme catppuccin")
