return {
  -- nvim-treesitter configuration
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
      local treesitter = require("nvim-treesitter.configs")
      treesitter.setup({
        highlight = {
          enable = true,
        },
        indent = { enable = true },
        -- NOTE: The 'autotag' option here is removed or commented out
        -- because nvim-ts-autotag now handles its own setup entirely.
        -- autotag = {
        --   enable = true, -- REMOVE OR COMMENT OUT THIS BLOCK
        -- },
        ensure_installed = {
          "json", "javascript", "typescript", "tsx", "yaml", "html", "css",
          "prisma", "markdown", "markdown_inline", "svelte", "graphql",
          "bash", "lua", "vim", "dockerfile", "gitignore", "query", "vimdoc", "c",
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
      })
    end,
  },

  -- nvim-ts-autotag configuration (this part should already be similar to what you had)
  {
    "windwp/nvim-ts-autotag",
    dependencies = { "nvim-treesitter/nvim-treesitter" }, -- Good to keep for load order
    event = { "BufReadPost", "BufNewFile" }, -- Or ft = {"html", "xml", ...} or "VeryLazy"
                                         -- Using BufReadPost can be slightly safer to ensure Treesitter is ready
    config = function()
      require('nvim-ts-autotag').setup({
        -- Add any nvim-ts-autotag specific options here if needed.
        -- Often, an empty setup call is sufficient.
        -- Example:
        -- filetypes = { "html", "xml", "javascriptreact", "typescriptreact", "svelte", "vue" },
        -- enable_rename = true,
        -- enable_close = true,
        -- enable_close_on_slash = true,
      })
      print("nvim-ts-autotag setup called") -- Add this for debugging
    end,
  }
}

