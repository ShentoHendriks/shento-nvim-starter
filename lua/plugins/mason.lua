-- lua/plugins/lsp_and_completion.lua

-- Define your LSP servers *once* at the very top (use Mason IDs)
local lsp_servers = {
  "lua_ls",
  "cssls",
  "ts_ls",
  "emmet_ls",
  "html",
  "volar",
  "tailwindcss",
}

return {
  -- Mason: LSP/DAP/formatter installer
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },

  -- Mason-LSPConfig: bridge mason with lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = lsp_servers, -- use the shared list
        automatic_installation = true,
      })
    end,
  },

  -- Native Neovim LSP setup (actual LSP configuration)
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      for _, server in ipairs(lsp_servers) do
        lspconfig[server].setup({})
      end
      vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { desc = "LSP Rename" })
    end,
  },

  { "rafamadriz/friendly-snippets" },

  -- Completion engine (blink.cmp)
  {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = { "rafamadriz/friendly-snippets" },
    opts = {
      keymap = {
        preset = "none",
        ["<C-j>"] = { "select_next", "fallback" }, -- Ctrl-j: next suggestion
        ["<C-k>"] = { "select_prev", "fallback" }, -- Ctrl-h: previous suggestion
        ["<Tab>"] = { "accept", "fallback" },  -- Enter: accept selection
      },
      appearance = { nerd_font_variant = "mono" },
      completion = {
        documentation = { auto_show = true },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      fuzzy = { implementation = "prefer_rust_with_warning" },
    },
    opts_extend = { "sources.default" },
  },
}
