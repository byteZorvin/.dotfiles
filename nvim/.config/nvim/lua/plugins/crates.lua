-- Manages rust crate version in rust files
return {
  "saecki/crates.nvim",
  tag = "stable",
  config = function()
    require("crates").setup()
  end,
}
