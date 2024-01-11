--
-- nvim/lua/mpinta/plugins/outln.lua
--

local outln = require("outln")

outln.setup({
	after = "normal zt",
	go = {
		methods = true,
		functions = true,
		structs = true,
		interfaces = true,
		endpoints = true,
	},
	openapi = {
		endpoints = true,
		components = true,
	},
	python = {
		functions = true,
		classes = true,
	},
})
