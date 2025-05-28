--
-- nvim/lua/mpinta/plugins/nvim-telescope.lua
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
                ["<C-[>"] = actions.close,
            },
        },
    },
    pickers = {
        find_files = {
            hidden = true,
            layout_config = {
                width = 0.95,
            },
        },
        live_grep = {
            additional_args = function()
                return {
                    "--hidden",
                }
            end,
            layout_config = {
                width = 0.95,
            },
        },
    },
})

-- load fzf extension
telescope.load_extension("fzf")
