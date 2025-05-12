return {
  "neovim/nvim-lspconfig",
  dependencies = { "saghen/blink.cmp" },

  -- example calling setup directly for each LSP
  config = function()
    local capabilities = require("blink.cmp").get_lsp_capabilities()
    local lspconfig = require("lspconfig")
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { desc = "LSP Rename" })
    lspconfig["lua_ls"].setup({ capabilities = capabilities })
    lspconfig["svelte"].setup({
      capabilities = capabilities,
    })
    lspconfig["ts_ls"].setup({
      capabilities = capabilities,
      filetypes = {
        "javascript",
        "javascriptreact",
        "typescriptreact",
        "javascript.jsx",
        "typescript",
        "typescript.tsx",
      },
    })
    lspconfig["emmet_ls"].setup({
      capabilities = capabilities,
      filetypes = {
        "html",
        "typescriptreact",
        "javascriptreact",
        "css",
        "sass",
        "scss",
        "less",
        "svelte",
        "javascript",
      },
    })
    lspconfig["tailwindcss"].setup({
      capabilities = capabilities,
      filetypes = {
        "svelte",
        "vue",
        "html",
        "typescriptreact",
        "javascriptreact",
        "javascript",
      },
    })
  end,
}
