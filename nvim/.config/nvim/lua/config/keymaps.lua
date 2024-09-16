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

--- Crates plugins
local crates = require("crates")
-- local opts = { silent = true }

vim.keymap.set("n", "<leader>ct", crates.toggle, { desc = "crates toggle" })
vim.keymap.set("n", "<leader>co", crates.reload, { desc = "crates rel[o]ad" })

vim.keymap.set("n", "<leader>cv", crates.show_versions_popup, { desc = "Show crates versions" })
-- vim.keymap.set("n", "<leader>cf", crates.show_features_popup, {desc = "Show fe"})
vim.keymap.set("n", "<leader>cd", crates.show_dependencies_popup, { desc = "Show features popup" })

vim.keymap.set("n", "<leader>cu", crates.update_crate, { desc = "update crate" })
vim.keymap.set("v", "<leader>cu", crates.update_crates, { desc = "update selected crates" })
vim.keymap.set("n", "<leader>ca", crates.update_all_crates, { desc = "updates all crates" })
vim.keymap.set("n", "<leader>cU", crates.upgrade_crate, { desc = "upgrade crate" })
vim.keymap.set("v", "<leader>cU", crates.upgrade_crates, { desc = "upgrade selected crates" })
vim.keymap.set("n", "<leader>cA", crates.upgrade_all_crates, { desc = "upgrade all crates" })

-- vim.keymap.set("n", "<leader>cx", crates.expand_plain_crate_to_inline_table, {})
-- vim.keymap.set("n", "<leader>cX", crates.extract_crate_into_table, {})

vim.keymap.set("n", "<leader>cH", crates.open_homepage, { desc = "open crate homepage" })
vim.keymap.set("n", "<leader>cG", crates.open_repository, { desc = "open crate [G]ithub repository" })
vim.keymap.set("n", "<leader>cD", crates.open_documentation, { desc = "open crate documentation" })
vim.keymap.set("n", "<leader>cC", crates.open_crates_io, { desc = "open crates.io" })
vim.keymap.set("n", "<leader>cL", crates.open_lib_rs, { desc = "open lib.rs" })
