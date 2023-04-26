-- 括号的高亮对齐, 使用tree-sitter实现
local M = {
  "HiPhish/nvim-ts-rainbow2",
}

M.config = function ()
 require('nvim-treesitter.configs').setup {
  rainbow = {
    enable = true,
    -- list of languages you want to disable the plugin for
    disable = { 'jsx', 'cpp' },
    -- Which query to use for finding delimiters
    query = 'rainbow-parens',
    -- Highlight the entire buffer all at once
    strategy = require('ts-rainbow').strategy.global,
  }
}
end

return M
