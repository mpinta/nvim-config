--
-- nvim/lua/mpinta/plugins/nvim-lint.lua
--

local lint = require("lint")

lint.linters_by_ft = {
	go = { "golangcilint" },
	javascript = { "eslint_d" },
	typescript = { "eslint_d" },
	python = { "pylint" },
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
