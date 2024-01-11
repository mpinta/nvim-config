--
-- nvim/lua/mpinta/plugins/conform.lua
--

local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        go = { "gofumpt" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        python = { "isort" },
    },
    format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
    },
})
