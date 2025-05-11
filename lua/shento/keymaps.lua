-- Variables for conciseness
opt = vim.opt
keymap = vim.keymap

-- Leader key
vim.g.mapleader = " "

-- Remaps
-- Can use jk to return to normal command line mode 
keymap.set("i", "jk", "<Esc>", { noremap = true }, {desc = "Enter normal mode" })
keymap.set("v", "jk", "<Esc>", { noremap = true }, {desc = "Enter normal mode" })

-- Clear search highlights
keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlights" })

-- System Clipboard Copy/paste
keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to system clipboard" })
keymap.set({"n", "v"}, "<leader>p", [["+p]], { desc = "Paste from system clipboard" })

-- Move selected lines up/down in Visual Mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move up" })

-- Better navigate splits more easily (Normal Mode)
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window down" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window up" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window right" })

-- Navigate between open files (buffers)
keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Prev buffer" })
keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })

-- Opening new splits
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Horizontal split" })
vim.keymap.set("n", "<leader>sc", ":close<CR>", { desc = "Close current split" })
