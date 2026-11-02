return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- Name the prefix groups; individual keys show their own desc
    spec = {
      { "<leader>f", group = "find" },
      { "<leader>h", group = "git hunk" },
    },
  },
}
