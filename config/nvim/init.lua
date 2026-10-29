vim.opt.number = true
vim.opt.termguicolors = true

-- Bootstrap lazy.nvim (clone it on first launch if missing)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin declarations
require("lazy").setup({
  {
    "RRethy/base16-nvim",
    lazy = false,     -- colorschemes must load at startup
    priority = 1000,  -- load before other plugins
    config = function()
      vim.cmd.colorscheme("base16-tomorrow-night-eighties")
    end,
  },
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
  },
  { "nvim-tree/nvim-web-devicons", lazy = true },
})
