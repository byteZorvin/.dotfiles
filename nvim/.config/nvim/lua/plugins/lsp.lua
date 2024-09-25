-- if true then
--   return {
--     "williamboman/mason-lspconfig.nvim",
--     dependencies = {
--       "williamboman/mason.nvim",
--       "neovim/nvim-lspconfig",
--     },
--
--     config = function()
--       require("mason").setup()
--       require("mason-lspconfig").setup()
--
--       require("lspconfig").rust_analyzer.setup({
--         settings = {
--           ["rust-analyzer"] = {
--             checkOnSave = {
--               command = "clippy",
--               extraArgs = { "--no-deps" }, -- Optional: add this if you don't want to check dependencies
--             },
--             cargo = {
--               features = { "testing" }, -- Replace "feat1" with your specific feature
--               allFeatures = false, -- Disable all features by default
--             },
--             -- You can add more rust-analyzer settings here
--           },
--         },
--       })
--     end,
--   }
-- end

return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.rust_analyzer.setup({
        settings = {
          ["rust-analyzer"] = {
            check = {
              command = "clippy",
            },
            cargo = {
              features = { "testing" }, -- Replace "feat1" with your specific feature
              allFeatures = false, -- Disable all features by default
            },
            -- You can add more rust-analyzer settings here
          },
        },
      })
    end,
  },
  -- -- Other plugins...
}
