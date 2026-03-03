-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-w>t", "<C-w>v<C-w>T", { desc = "Open in new tab" })
vim.keymap.set("n", ";", ":", { desc = "Command Mode" })

-- remove LazyVim overrides of home/last line keys
vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

-- Toggle Diagnostics (text)
local virtual_text = true
vim.keymap.set("n", "<leader>uD", function()
  virtual_text = not virtual_text
  vim.diagnostic.config({ virtual_text = virtual_text })
end, { desc = "Toggle Diagnostics (text)" })

vim.keymap.set("n", "<leader>bp", function()
  print(vim.api.nvim_buf_get_name(0))
end, { desc = "Print buffer name" })
