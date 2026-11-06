return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
  config = function()
    -- Vue SFC support: vtsls loads Vue's TypeScript plugin from the mason install
    local vue_language_server_path = vim.fn.expand("$MASON/packages")
      .. "/vue-language-server/node_modules/@vue/language-server"

    vim.lsp.config("vtsls", {
      settings = {
        vtsls = {
          tsserver = {
            globalPlugins = {
              {
                name = "@vue/typescript-plugin",
                location = vue_language_server_path,
                languages = { "vue" },
                configNamespace = "typescript",
              },
            },
          },
        },
      },
      -- Extend default filetypes so vtsls also attaches to .vue files
      filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
    })

    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "vtsls", "vue_ls" },
    })
  end,
}
