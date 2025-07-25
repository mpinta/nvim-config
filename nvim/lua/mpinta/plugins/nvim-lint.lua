--
-- nvim/lua/mpinta/plugins/nvim-lint.lua
--

local lint = require("lint")

lint.linters_by_ft = {
    go = { "golangcilint" },
    python = { "flake8" },
    typescript = { "eslint_d" },
    javascript = { "eslint_d" },
}

local lint_augroup = vim.api.nvim_create_augroup("lint", {
    clear = true,
})

vim.api.nvim_create_autocmd({
    "BufEnter",
    "BufWritePost",
    "InsertLeave",
}, {
    group = lint_augroup,
    callback = function()
        lint.try_lint()
    end,
})
