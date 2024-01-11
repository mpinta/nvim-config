--
-- nvim/lua/mpinta/plugins/telescope.lua
--

local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
    defaults = {
        file_ignore_patterns = {
            ".git/",
            "go/vendor",
        },
        mappings = {
            i = {
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-q>"] = actions.close,
            },
        },
    },
    pickers = {
        find_files = {
            hidden = true,
        },
        live_grep = {
            additional_args = function()
                return {
                    "--hidden",
                }
            end,
        },
    },
})

-- load fzf extension
telescope.load_extension("fzf")
