--
-- nvim/lua/mpinta/plugins/nvim-treesitter.lua
--

local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
    ensure_installed = {
        "go",
        "javascript",
        "typescript",
        "lua",
        "python",
        "bash",
        "json",
        "dockerfile",
        "yaml",
        "markdown",
    },
    highlight = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
    indent = {
        enable = true,
    },
})
