return {
  "nvimtools/none-ls.nvim",
  dependencies = { "williamboman/mason.nvim" },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier,   -- JS, TS, CSS, HTML, etc.
        null_ls.builtins.formatting.stylua,     -- Lua
        -- Add more as needed
      },
      -- Optional: format on save
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ bufnr = bufnr })
            end,
          })
        end
      end,
    })
  end,
}
