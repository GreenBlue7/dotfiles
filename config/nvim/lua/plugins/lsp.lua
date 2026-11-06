return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
  opts = {
    -- Servers to install via mason; installed servers are enabled automatically
    ensure_installed = { "lua_ls" },
  },
}
