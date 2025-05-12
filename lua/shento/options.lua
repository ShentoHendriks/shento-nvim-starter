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
opt.updatetime = 150   -- Faster plugin/LSP diagnostic popups
opt.signcolumn = "yes" -- Always-visible sign column, avoids shifting text

-- Split settings
opt.splitbelow = true
opt.splitright = true

-- Clipboard settings
opt.clipboard = "unnamedplus"

-- Diagnostics visibility
vim.diagnostic.config({
  -- Enable virtual text
  virtual_text = true, -- This can also be a table for more detailed configuration

  -- Other options you might want to configure at the same time:
  signs = true,            -- Show signs in the gutter (recommended)
  underline = true,        -- Underline the problematic code segment
  update_in_insert = false, -- Don't update diagnostics while in insert mode (can be distracting)
  severity_sort = true,    -- Sort diagnostics by severity in lists
  float = {                -- Configuration for the diagnostic hover window
    source = "always",     -- Or "if_many" to only show source if multiple sources report on the same line
    border = "rounded",
    header = "",           -- Remove default header like "[LSP]" from float
    prefix = "",           -- Remove default prefix like "▸" from float
  },
})
