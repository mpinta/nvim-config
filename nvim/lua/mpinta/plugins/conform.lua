--
-- nvim/lua/mpinta/plugins/conform.lua
--

local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        go = { "gofumpt" },
        python = { "black" },
        html = { "prettier" },
        javascript = { "prettier" },
        typescript = { "prettier" },
    },
    format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
    },
})
