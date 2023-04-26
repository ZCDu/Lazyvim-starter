local M = {
  'nvim-telescope/telescope-media-files.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/popup.nvim',
    'nvim-lua/plenary.nvim',
  },
}

M.config = function ()
  require('telescope').load_extension('media_files')
end

return M
