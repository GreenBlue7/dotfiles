return {
  "webhooked/kanso.nvim",
  lazy = false,     -- colorschemes must load at startup
  priority = 1000,  -- load before other plugins
  config = function()
    vim.cmd.colorscheme("kanso-pearl")
  end,
}
