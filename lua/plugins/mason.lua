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
}
