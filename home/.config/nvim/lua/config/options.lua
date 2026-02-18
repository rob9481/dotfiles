-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.autoformat = false
vim.g.maplocalleader = ","
vim.opt.list = false
vim.opt.relativenumber = false
vim.opt.whichwrap = "b,s,<,>,[,],h,l" -- allow left/right/h/l over EOL
vim.opt.wildignorecase = true -- ignore case on completion
vim.opt.wildmode = {"list", "longest"}
