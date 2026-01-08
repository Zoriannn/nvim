return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        dartls = {
          cmd = { "dart", "language-server", "--protocol=lsp" },
        },

        gopls = {
          settings = {
            gopls = {
              analyses = {
                unusedparams = true,
                shadow = true,
              },
              staticcheck = true,
            },
          },
        },
      },
    },
  },
}
