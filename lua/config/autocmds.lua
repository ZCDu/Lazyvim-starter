-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- 针对neovim的jumplist的配置，就是gd ctrl-o行为的优化，可以通过jumps查看jumplsit
vim.cmd([[
set tagfunc=v:lua.vim.lsp.tagfunc
set jumpoptions+=stack
]])
