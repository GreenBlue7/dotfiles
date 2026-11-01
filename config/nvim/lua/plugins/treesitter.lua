return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,         -- this plugin does not support lazy-loading
  build = ":TSUpdate",  -- update parsers whenever the plugin updates
  config = function()
    -- Parser names happen to match filetype names for all of these
    local languages = {
      "lua", "javascript", "typescript", "vue",
      "html", "css", "json", "java",
    }

    -- Already-installed parsers are skipped
    require("nvim-treesitter").install(languages)

    -- Highlighting is built into Neovim; enable it per filetype
    vim.api.nvim_create_autocmd("FileType", {
      pattern = languages,
      callback = function() vim.treesitter.start() end,
    })
  end,
}
