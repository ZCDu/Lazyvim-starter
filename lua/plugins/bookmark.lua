local M = {
  'MattesGroeger/vim-bookmarks',
  dependencies = {
    {
      "folke/which-key.nvim",
      opts = function (_, opts)
        local m_opts = {
          mode = "n", -- NORMAL mode
          prefix = "m",
          buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
          silent = true, -- use `silent` when creating keymaps
          noremap = true, -- use `noremap` when creating keymaps
          nowait = true, -- use `nowait` when creating keymaps
        }

        local m_mappings = {
          a = { "<cmd>silent BookmarkShowAll<cr>", "Annotate" },
          c = { "<cmd>silent BookmarkClear<cr>", "Clear" },
          x = { "<cmd>silent BookmarkClearAll<cr>", "Clear All" },
          m = { "<cmd>silent BookmarkToggle<cr>", "Mark Toggle" },
          i = { "<cmd>silent BookmarkAnnotate<cr>", "Mark Annotate" },
          -- m = { '<cmd>lua require("harpoon.mark").add_file()<cr>', "Harpoon" },
          ["."] = { '<cmd>lua require("harpoon.ui").nav_next()<cr>', "Harpoon Next" },
          [","] = { '<cmd>lua require("harpoon.ui").nav_prev()<cr>', "Harpoon Prev" },
          l = { "<cmd>lua require('user.bfs').open()<cr>", "Buffers" },
          n = { "<cmd>silent BookmarkNext<cr>", "Next" },
          N = { "<cmd>silent BookmarkPrev<cr>", "Prev" },
          s = { "<cmd>Telescope harpoon marks<cr>", "Search Files" },
          -- s = {
          --   "<cmd>lua require('telescope').extensions.vim_bookmarks.all({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<cr>",
          --   "Show",
          -- },
          [";"] = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', "Harpoon UI" },
        }
        require("which-key").register(m_mappings, m_opts)
      end
    }
  },
  {"tom-anders/telescope-vim-bookmarks.nvim",
    opts = function ()
      require('telescope').load_extension('vim_bookmarks')
    end
  },
}
M.config = function ()
  -- highlight BookmarkSign ctermbg=NONE ctermfg=160
  -- highlight BookmarkLine ctermbg=194 ctermfg=NONE
  local icons = require "config.icons"
  vim.g.bookmark_sign = icons.ui.BookMark
  vim.g.bookmark_annotation_sign = icons.ui.Comment
  vim.g.bookmark_no_default_key_mappings = 1
  vim.g.bookmark_auto_save = 0
  vim.g.bookmark_auto_close = 0
  vim.g.bookmark_manage_per_buffer = 0
  vim.g.bookmark_save_per_working_dir = 0
  -- vim.g.bookmark_highlight_lines = 1
  vim.g.bookmark_show_warning = 0
  vim.g.bookmark_center = 1
  vim.g.bookmark_location_list = 0
  vim.g.bookmark_disable_ctrlp = 1
  vim.g.bookmark_display_annotation = 0
  -- vim.g.bookmark_auto_save_file = '~/.config/lvim/bookmarks' 
end

return M
