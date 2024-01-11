--
-- nvim/lua/mpinta/plugins/neoscroll.nvim
--

local neoscroll = require("neoscroll")

neoscroll.setup({
    mappings = {
        "<C-u>",
        "<C-d>",
        "zt",
        "zz",
        "zb",
    },
    hide_cursor = true,
    stop_eof = false,
    cursor_scrolls_alone = true,
})
