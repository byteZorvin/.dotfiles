-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Set up lspconfig.
-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- require("lspconfig").tsserver.setup({
--   capabilities = capabilities,
-- })
-- require("lspconfig").lua_ls.setup({
--   capabilities = capabilities,
-- })
require("lspconfig").cairo_ls.setup({
  cmd = { "scarb", "cairo-language-server", "--stdio" },
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.star",
  callback = function()
    vim.bo.filetype = "python"
  end,
})
-- require("lspconfig").rust_analyzer.setup({
--   capabilities = capabilities,
-- })
-- require("lspconfig").pyright.setup({
--   capabilities = capabilities,
-- })
