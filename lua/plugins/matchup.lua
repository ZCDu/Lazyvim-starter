-- pair matchup
local M = {
  "andymass/vim-matchup",
}
M.init = function ()
  vim.g.matchup_matchparen_offscreen = { method = nil }
  vim.g.matchup_matchpref = { html = { nolists = 1 } }
end

return M
