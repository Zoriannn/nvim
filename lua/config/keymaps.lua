-- Open definition in vertical split
vim.keymap.set("n", "gvd", function()
  -- Create vertical split
  vim.cmd("vsplit")

  -- Jump to LSP definiton in a new split
  vim.lsp.buf.definition()
end, { desc = "Go to definition (vertical split)" })

vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -
