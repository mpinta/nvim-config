--
-- nvim/lua/mpinta/plugins/catppuccin.lua
--

local catppuccin = require("catppuccin")

catppuccin.setup({
    background = {
        light = "latte",
        dark = "mocha",
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
    styles = {
        keywords = { "bold" },
        comments = { "italic" },
        functions = { "bold" },
        variables = {},
        strings = {},
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
    dim_inactive = {
        enabled = true,
        shade = "dark",
        percentage = 0.15,
    },
    show_end_of_buffer = true,
})

-- set catppuccin colorscheme
vim.cmd("colorscheme catppuccin")
