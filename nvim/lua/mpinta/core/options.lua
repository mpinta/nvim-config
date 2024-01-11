--
-- lua/mpinta/core/options.lua
--

local o = vim.opt

o.tabstop = 4
o.shiftwidth = 4
o.nu = true
o.number = true
o.swapfile = false
o.incsearch = true
o.smartcase = true
o.expandtab = true
o.splitright = true
o.splitbelow = true
o.cursorline = true
o.ignorecase = true
o.smartindent = true
o.termguicolors = true
o.relativenumber = true
o.mouse = "c"
o.belloff = "all"
o.encoding = "utf-8"
o.background = "dark"
o.clipboard = "unnamedplus"

vim.g.mapleader = " "

vim.cmd("set nohlsearch")
vim.cmd("set guicursor+=a:blinkon0")
