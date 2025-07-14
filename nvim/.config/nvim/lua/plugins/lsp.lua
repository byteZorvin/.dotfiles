return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },

  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()
    local nvim_lsp = require("lspconfig")

    nvim_lsp.rust_analyzer.setup({
      settings = {
        ["rust-analyzer"] = {
          checkOnSave = {
            command = "clippy",
            extraArgs = { "--no-deps" }, -- Optional: add this if you don't want to check dependencies
          },
          -- cargo = {
          --   -- features = { "testing" }, -- Replace "feat1" with your specific feature
          --   -- allFeatures = true,
          -- },
          check = {
            allTargets = true,
          },
          inlayHints = {
            enable = true, -- Enable inlay hints
            typeHints = true, -- Enable type hints
            chainingHints = true, -- Enable chaining hints
            parameterHints = true, -- Enable parameter hints
            closureReturnTypeHints = {
              enable = true, -- Show return types of closures
            },
          },
          -- You can add more rust-analyzer settings here
        },
      },
    })

    nvim_lsp.denols.setup({
      -- on_attach = on_attach,
      root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
    })

    nvim_lsp.ts_ls.setup({
      -- on_attach = on_attach,
      root_dir = nvim_lsp.util.root_pattern("package.json"),
      single_file_support = false,
    })

    -- Not working not sure why
    -- nvim_lsp.solidity_ls_nomicfoundation.setup({
    --   settings = {
    --     ["nomicfoundation-solidity-language-server"] = {
    --       formatter = "forge",
    --     },
    --   },
    -- })
  end,
}
-- return {
--   "williamboman/mason-lspconfig.nvim",
--   dependencies = {
--     "williamboman/mason.nvim",
--     "neovim/nvim-lspconfig",
--   },
--
--   config = function()
--     require("mason").setup()
--     require("mason-lspconfig").setup()
--
--     require("lspconfig").rust_analyzer.setup({
--       settings = {
--         ["rust-analyzer"] = {
--           checkOnSave = {
--             command = "clippy",
--             extraArgs = { "--no-deps" }, -- Optional: add this if you don't want to check dependencies
--           },
--           cargo = {
--             -- features = { "testing" }, -- Replace "feat1" with your specific feature
--             allFeatures = false, -- Disable all features by default
--           },
--           -- inlayHints = {
--           --   enable = true, -- Enable inlay hints
--           --   typeHints = true, -- Enable type hints
--           --   chainingHints = true, -- Enable chaining hints
--           --   parameterHints = true, -- Enable parameter hints
--           --   closureReturnTypeHints = {
--           --     enable = true, -- Show return types of closures
--           --   },
--           -- },
--           -- You can add more rust-analyzer settings here
--         },
--       },
--     })
--   end,
-- }

-- return {
--   {
--     "neovim/nvim-lspconfig",
--     config = function()
--       local lspconfig = require("lspconfig")
--
--       lspconfig.rust_analyzer.setup({
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
--   },
--   -- -- Other plugins...
-- }
