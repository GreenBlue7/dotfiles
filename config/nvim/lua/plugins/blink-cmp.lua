return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },  -- VS Code-style snippet collection
  version = "1.*",  -- release tag lets blink download a prebuilt fuzzy matcher
  opts = {
    keymap = { preset = "default" },
    completion = {
      documentation = { auto_show = true },  -- show docs next to the selected item
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  },
}
