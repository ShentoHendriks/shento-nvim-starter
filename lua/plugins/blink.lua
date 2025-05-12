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
			["<Tab>"] = { "accept", "fallback" }, -- Enter: accept selection
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
}
