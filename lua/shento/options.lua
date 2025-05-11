-- Variables for conciseness
opt = vim.opt
keymap = vim.keymap

-- Basic Settings
-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Searching
opt.ignorecase = true
opt.smartcase = true

-- Mouse support
opt.mouse = "a"

-- Amount in ms Neovim waits for mapped sequence to complete
opt.timeoutlen = 5000
opt.updatetime = 250 -- Faster plugin/LSP diagnostic popups
opt.signcolumn = "yes" -- Always-visible sign column, avoids shifting text

-- Split settings
opt.splitbelow = true
opt.splitright = true

-- Clipboard settings
opt.clipboard = "unnamedplus"
