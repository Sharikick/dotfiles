return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  opts = {
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    completion = {
      list = {
        selection = {
          auto_insert = false,
        },
      },
      accept = {
        auto_brackets = { enabled = true },
      },
    },
    keymap = {
      preset = "enter",
      ["<C-space>"] = { "show", "hide" },
      ["<C-e>"] = { "show_documentation", "hide_documentation" },
    },
  }
}
