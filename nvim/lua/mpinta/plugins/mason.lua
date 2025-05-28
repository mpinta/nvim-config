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
        "gopls",                           -- gopls
        "pylsp",                           -- python-lsp-server
        "html",                            -- html-lsp
        "ts_ls",                           -- typescript-language-server
        "tailwindcss",                     -- tailwindcss-language-server
        "lua_ls",                          -- lua-language-server
        "bashls",                          -- bash-language-server
        "jsonls",                          -- json-lsp
        "tflint",                          -- tflint
        "dockerls",                        -- dockerfile-language-server
        "docker_compose_language_service", -- docker-compose-language-service
    },
    handlers = {
        lsp_zero.default_setup,

        -- Lua configuration
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            lspconfig.lua_ls.setup(lua_opts)
        end,

        -- Python configuration
        pylsp = function()
            local python_opts = {
                settings = {
                    pylsp = {
                        plugins = {
                            rope        = { enabled = false }, -- completions and renaming
                            pyflakes    = { enabled = false }, -- linter to detect various errors
                            mccabe      = { enabled = false }, -- linter for complexity checking
                            pycodestyle = { enabled = false }, -- linter for style checking
                            pydocstyle  = { enabled = false }, -- linter for docstring style checking
                            autopep8    = { enabled = false }, -- code formatting
                            yapf        = { enabled = false }, -- code formatting
                            flake8      = { enabled = true },  -- error checking
                            black       = { enabled = true },  -- code formatting
                            pylint      = { enabled = false }, -- code linting
                        },
                    },
                },
            }

            lspconfig.pylsp.setup(python_opts)
        end,
    },
})
