--
-- nvim/lua/mpinta/plugins/cmp.lua
--

local cmp = require("cmp")
local luasnip = require("luasnip")

local map = cmp.mapping

cmp.setup({
	completion = {
		completeopt = "menu,menuone,preview,noselect",
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = map.preset.insert({
		["<Tab>"] = map.select_next_item(),
		["<S-Tab>"] = map.select_prev_item(),
		["<C-j>"] = map.select_next_item(),
		["<C-k>"] = map.select_prev_item(),
		["<C-u>"] = map.scroll_docs(-4),
		["<C-d>"] = map.scroll_docs(4),
		["<C-Space>"] = map.complete(),
		["<C-q>"] = map.abort(),
		["<CR>"] = map.confirm({
			select = false,
		}),
	}),
	sources = cmp.config.sources({
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
		{ name = "nvim_lsp" },
		{ name = "nvim_lua" },
	}),
})
