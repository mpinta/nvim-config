--
-- nvim/lua/mpinta/plugins/lsp-zero.lua
--

local lsp_zero = require("lsp-zero")

local map = vim.keymap.set

local opts = {
	noremap = true,
	silent = true,
}

lsp_zero.extend_lspconfig()

lsp_zero.on_attach(function(_, bufnr)
	opts.buffer = bufnr

	map("n", "gr", "<Cmd>Telescope lsp_references<CR> | zz", opts)
	map("n", "gd", "<Cmd>Telescope lsp_definitions<CR> | zz", opts)
	map("n", "gi", "<Cmd>Telescope lsp_implementations<CR> | zz", opts)
	map("n", "go", "<Cmd>Telescope lsp_type_definitions<CR> | zz", opts)

	map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
	map("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	map("n", "gS", "<Cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	map("n", "gR", "<Cmd>lua vim.lsp.buf.rename()<CR>", opts)
	map({ "n", "x" }, "F", "<Cmd>lua vim.lsp.buf.format({async = true})<CR>", opts)

	map("n", "[d", vim.diagnostic.goto_prev, opts)
	map("n", "]d", vim.diagnostic.goto_next, opts)
	map({ "n", "v" }, "gC", vim.lsp.buf.code_action, opts)
end)

-- change diagnostic symbols
local signs = {
	Error = " ",
	Warn = " ",
	Hint = "󰠠 ",
	Info = " ",
}

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, {
		text = icon,
		texthl = hl,
		numhl = "",
	})
end
