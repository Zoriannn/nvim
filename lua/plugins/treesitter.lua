-- ~/.config/nvim/lua/plugins/treesitter.lua
-- Since LazyVim already includes treesitter, we'll configure it by overriding the default settings
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html"
      },
    },
  },
}
