return {
  "saghen/blink.cmp",
  version = "1.*",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  dependencies = { "rafamadriz/friendly-snippets" },
  opts = {
    keymap = {
      preset = "none",
      ["<C-j>"] = { "select_next", "fallback" }, -- Ctrl-j: next suggestion
      ["<C-k>"] = { "select_prev", "fallback" }, -- Ctrl-h: previous suggestion
      ["<Tab>"] = { "accept", "fallback" },   -- Enter: accept selection
    },
    appearance = { nerd_font_variant = "mono" },
    completion = {
      documentation = { auto_show = true },
      keyword = { range = "full" },
      trigger = {
        prefetch_on_insert = true,
        show_in_snippet = false,
        show_on_keyword = true,
        show_on_trigger_character = true,
      },
    },
    signature = {
      enabled = true,
      trigger = {
        enabled = true,
      },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = {
      implementation = "prefer_rust_with_warning",
      use_frecency = true,
      use_proximity = true,
    },
  },
  opts_extend = { "sources.default" },
}
