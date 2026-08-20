-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Move current buffer left or right in bufferline
vim.keymap.set("n", "<A-h>", "<cmd>BufferLineMovePrev<cr>", { desc = "Move buffer left" })
vim.keymap.set("n", "<A-l>", "<cmd>BufferLineMoveNext<cr>", { desc = "Move buffer right" })
