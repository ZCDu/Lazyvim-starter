--自动添加括号，只是针对的语言偏向于前端，基于tree-sitter实现
local M = {
  "windwp/nvim-ts-autotag",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
}

M.config = function ()
  require('nvim-ts-autotag').setup()
end

return M
