-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  --@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exits
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local opts = { noremap = true, silent = true }
local nopts = { noremap = true }

map("n", "s", "<nop>", {})
map("n", "<S-t>", "<nop>", {})

-- window navigation supplementary --
-- <C-jkhl> to change current cursor to other window
-- Place the two screens up and down
map("n", "sh", "<C-w>t<C-w>K")
-- Place the two screens side by side
map("n", "sv", "<C-w>t<C-w>H")
-- Rotate screens
map("n", "srh", "<C-w>b<C-w>K")
map("n", "srv", "<C-w>b<C-w>H")
-- split screens
map("n", "su", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", {})
map("n", "se", ":set splitbelow<CR>:split<CR>", {})
map("n", "si", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", {})
map("n", "sn", ":set splitright<CR>:vsplit<CR>", {})
--  配合ctrl+w+x进行两个panel的位置调换，效率max!!!

-- Indentation --
map("n", ">", ">>", { noremap = true })
map("n", "<", "<<", { noremap = true })

-- Tabs --
map("n", "<m-t>", ":tabnew %<cr>", opts)
map("n", "<m-y>", ":tabclose<cr>", opts)
map("n", "<m-\\>", ":tabonly<cr>", opts)

-- Copy to system clipboard --
map("v", "Y", '"+y', nopts)
map("v", "P", '"+p', nopts)

-- -- Naviagate buffers --
map("n", "<leader>j", ":BufferLinePick<CR>", opts)
map("n", "<leader>b", ":bnext<CR>", opts)
map("n", "<leader>v", ":bprevious<CR>", opts)
-- delete need vim-bbye
map("n", "Q", ":Bdelete<CR>", opts)

-- Visual Block --
-- Move text up and down, it looks cool, but not a frequent opts
--map("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
--map("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- aerial --
map("n", "<S-t>", "<cmd>AerialToggle!<CR>")
map("n", "<C-a>", "<cmd>AerialToggle!<CR>")

-- undotree --
map("n", "<F7>", "<cmd>lua require('undotree').toggle()<CR>", opts)

-- zen-mode --
map("n", "<C-x>", "<cmd>ZenMode<cr>", opts)

-- neo-tree
map("n", "<C-n>", "<cmd>Neotree<cr>", opts)
