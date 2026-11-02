return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  -- Plugin loads on first keypress, not at startup
  keys = {
    { "<leader>ff", function() require("fzf-lua").files() end, desc = "Find files" },
    { "<leader>fg", function() require("fzf-lua").live_grep() end, desc = "Grep in project" },
    { "<leader>fb", function() require("fzf-lua").buffers() end, desc = "Open buffers" },
    { "<leader>fr", function() require("fzf-lua").oldfiles() end, desc = "Recent files" },
  },
}
