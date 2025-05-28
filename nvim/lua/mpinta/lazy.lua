--
-- nvim/lua/mpinta/lazy.lua
--

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- themes
    "catppuccin/nvim",

    -- git
    "tpope/vim-fugitive",
    "airblade/vim-gitgutter",

    -- utilities
    "karb94/neoscroll.nvim",
    "dominikduda/vim_current_word",
    "ntpeters/vim-better-whitespace",
    "akinsho/toggleterm.nvim",
    "stevearc/dressing.nvim",
    "folke/zen-mode.nvim",
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = {
            "MarkdownPreviewToggle",
            "MarkdownPreview",
            "MarkdownPreviewStop",
        },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = {
                "markdown",
            }
        end,
        ft = {
            "markdown",
        },
    },

    -- highlighting
    "towolf/vim-helm",
    {
        "nvim-treesitter/nvim-treesitter",
        cmd = "TSUpdate",
    },

    -- searching
    {
        "bassamsdata/namu.nvim"
    },
    {
        "francoiscabrol/ranger.vim",
        dependencies = {
            "rbgrouleff/bclose.vim",
        },
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
        },
    },
    {
        "mpinta/outln.nvim",
        dependencies = {
            "stevearc/dressing.nvim",
        },
    },
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },

    -- autocompletion
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lua",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
    },

    -- lsp
    "VonHeikemen/lsp-zero.nvim",
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
        },
    },
    {
        "neovim/nvim-lspconfig",
        event = {
            "BufReadPre",
            "BufNewFile",
        },
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
        },
    },

    -- formatting
    {
        "stevearc/conform.nvim",
        event = {
            "BufReadPre",
            "BufNewFile",
        },
    },

    -- linting
    {
        "mfussenegger/nvim-lint",
        event = {
            "BufReadPre",
            "BufNewFile",
        },
    },
})
