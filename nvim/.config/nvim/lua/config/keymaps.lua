-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-a>", "gg<S-v>G")
vim.keymap.set("n", "<C-f>", ":!tmux neww tmux-sessionizer<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Felt as they made it slow
-- vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- Moving lines up and down
-- vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })

-- Navigating quickfix list
vim.keymap.set("n", "<C-n>", "<Cmd> cnext <CR>")
vim.keymap.set("n", "<C-p>", "<Cmd> cprev <CR>")

-- Lsp diagnostic show
vim.keymap.set("n", "vd", function()
  vim.diagnostic.open_float({ border = "single" })
end, { noremap = true, silent = true })

vim.keymap.set("n", "<Leader>n", function()
  vim.diagnostic.open_float({ border = "single" })
end, { noremap = true, silent = true })
