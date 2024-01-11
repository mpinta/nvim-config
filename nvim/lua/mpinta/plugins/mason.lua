--
-- nvim/lua/mpinta/plugins/mason.lua
--

local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

local lsp_zero = require("lsp-zero")
local lspconfig = require("lspconfig")

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

mason_lspconfig.setup({
	ensure_installed = {
		"gopls", -- gopls
		"tsserver", -- typescript-language-server
		"eslint", -- eslint-lsp
		"lua_ls", -- lua-language-server
		"pylsp", -- python-lsp-server
		"bashls", -- bash-lanugage-server
		"jsonls", -- json-lsp
		"dockerls", -- dockerfile-language-server-nodejs
	},
	handlers = {
		lsp_zero.default_setup,
		lua_ls = function()
			local lua_opts = lsp_zero.nvim_lua_ls()
			lspconfig.lua_ls.setup(lua_opts)
		end,
	},
})
