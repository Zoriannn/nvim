return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        dartls = {
          cmd = { "dart", "language-server", "--protocol=lsp" },
          settings = {
            dart = {
              analysisExcludedFolders = {
                vim.fn.expand("$HOME/.pub-cache"),
                vim.fn.expand("$HOME/flutter"),
              },
              updateImportsOnRename = true,
              completeFunctionCalls = true,
            },
          },
        },
      },
      diagnostics = {
        update_in_insert = false,
      },
    },
  },
}
