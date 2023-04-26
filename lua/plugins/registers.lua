-- use popup window showing the registers and their values
local M = {
    "tversteeg/registers.nvim",
    name = "registers",
    event = "VeryLazy",
    keys = {
        { "\"",    mode = { "n", "v" } },
        { "<C-R>", mode = "i" }
    },
    cmd = "Registers",
}


return M
