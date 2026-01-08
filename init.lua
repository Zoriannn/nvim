-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

function Transparent(color)
  color = color or "tokyonight"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
Transparent()

vim.api.nvim_set_keymap("n", "<F5>", ":!javac % && java %:r<CR>", { noremap = true, silent = true })

-- Prevent deleting from also copying
vim.keymap.set({ "n", "v" }, "d", '"_d', { noremap = true })
vim.keymap.set("n", "dd", '"_dd', { noremap = true })

-- Cmd + s for saving files
vim.keymap.set("n", "<D-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<D-s>", "<Esc>:w<CR>a", { noremap = true, silent = true })
