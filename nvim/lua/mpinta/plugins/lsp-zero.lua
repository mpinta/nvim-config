--
-- nvim/lua/mpinta/plugins/lsp-zero.lua
--

local lsp_zero = require("lsp-zero")

lsp_zero.extend_lspconfig()

lsp_zero.on_attach(function(_, bufnr)
    lsp_zero.default_keymaps({
        buffer = bufnr,
    })
end)

-- change diagnostic symbols
local signs = {
    Error = " ",
    Warn = " ",
    Hint = "󰠠 ",
    Info = " ",
}

vim.diagnostic.config({
    signs = {
        error = signs.Error,
        warning = signs.Warn,
        hint = signs.Hint,
        info = signs.Info,
    }
})
