return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      renderer = {
        root_folder_label = ":~",              -- home-relative path, no trailing "/.."
        indent_markers = { enable = true },    -- vertical guide lines
        icons = {
          show = { folder_arrow = false },     -- folder icons alone indicate open/closed
        },
      },
    })
    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
  end,
}
