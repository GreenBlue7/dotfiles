return {
  "stevearc/conform.nvim",
  event = "BufWritePre",  -- load right before the first save
  cmd = "ConformInfo",
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      vue = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
    },
    formatters = {
      -- Skip prettier when no project root is found
      prettier = { require_cwd = true },
    },
    format_on_save = { timeout_ms = 500 },
  },
}
