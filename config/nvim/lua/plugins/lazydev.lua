return {
  "folke/lazydev.nvim",
  ft = "lua",  -- only needed when editing Lua files
  opts = {
    library = {
      -- Load luv type definitions when `vim.uv` appears in the file
      { path = "${3rd}/luv/library", words = { "vim%.uv" } },
    },
  },
}
