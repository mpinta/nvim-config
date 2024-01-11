--
-- nvim/lua/mpinta/plugins/dressing.lua
--

local dressing = require("dressing")

dressing.setup({
    select = {
        enabled = true,
        backend = {
            "telescope",
        },
    },
})
