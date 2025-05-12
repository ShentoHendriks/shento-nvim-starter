-- lua/plugins/lsp_and_completion.lua

-- Define your LSP servers *once* at the very top (use Mason IDs)
local lsp_servers = { -- https://github.com/neovim/nvim-lspconfig/tree/master/lsp to see all lsp options
  "lua_ls",
  "cssls",
  "ts_ls",
  "emmet_ls",
  "svelte",
  "html",
  "volar",
  "tailwindcss",
  "css_variables",
  "cssmodules_ls",
}

return {
  -- Mason: LSP/DAP/formatter installer
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },

  { "rafamadriz/friendly-snippets" },

  -- Native Neovim LSP setup (actual LSP configuration)
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "antosha417/nvim-lsp-file-operations",
      "saghen/blink.cmp",
    },
    opts = {
      servers = {
        lua_ls = {},
        cssls = {},
        ts_ls = {},
        emmet_ls = {},
        svelte = {},
        html = {},
        volar = {},
        tailwindcss = {},
        css_variables = {},
        cssmodules_ls = {},
      },
    },
    config = function(_, opts)
      local lspconfig = require("lspconfig")
      for server, config in pairs(opts.servers) do
        -- passing config.capabilities to blink.cmp merges with the capabilities in your
        -- `opts[server].capabilities, if you've defined it
        config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
        lspconfig[server].setup(config)
      end
      vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { desc = "LSP Rename" })
    end,
  },
}
