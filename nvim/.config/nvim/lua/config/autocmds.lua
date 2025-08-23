-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

--  Autocmd for build.docker file to be set
--  as dockerfile filetype in Madara
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.docker",
  callback = function()
    vim.bo.filetype = "dockerfile"
    vim.b.autoformat = false
  end,
})

--  Autocmd for setting diff env files
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.env.*",
  callback = function()
    vim.bo.filetype = "sh"
  end,
})
