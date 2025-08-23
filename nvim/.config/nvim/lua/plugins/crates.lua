-- Manages rust crate version in rust files
return {
  "saecki/crates.nvim",
  tag = "stable",
  config = function()
    local crates = require("crates").setup()
    vim.keymap.set("n", "<leader>ct", crates.toggle, { silent = true, desc = " Crates toggle" })
    vim.keymap.set("n", "<leader>co", crates.reload, { silent = true, desc = " Crates rel[o]ad" })

    vim.keymap.set("n", "<leader>cv", crates.show_versions_popup, { silent = true, desc = " Show crates versions" })
    -- vim.keymap.set("n", "<leader>cf", crates.show_features_popup, {silent = true, desc = " Show fe"})
    vim.keymap.set("n", "<leader>cd", crates.show_dependencies_popup, { silent = true, desc = " Show features popup" })

    vim.keymap.set("n", "<leader>cu", crates.update_crate, { silent = true, desc = " Update crate" })
    vim.keymap.set("v", "<leader>cu", crates.update_crates, { silent = true, desc = " Update selected crates" })
    vim.keymap.set("n", "<leader>ca", crates.update_all_crates, { silent = true, desc = " Updates all crates" })
    vim.keymap.set("n", "<leader>cU", crates.upgrade_crate, { silent = true, desc = " Upgrade crate" })
    vim.keymap.set("v", "<leader>cU", crates.upgrade_crates, { silent = true, desc = " Upgrade selected crates" })
    vim.keymap.set("n", "<leader>cA", crates.upgrade_all_crates, { silent = true, desc = " Upgrade all crates" })

    -- vim.keymap.set("n", "<leader>cx", crates.expand_plain_crate_to_inline_table, {})
    -- vim.keymap.set("n", "<leader>cX", crates.extract_crate_into_table, {})

    vim.keymap.set("n", "<leader>cH", crates.open_homepage, { silent = true, desc = " Open crate homepage" })
    vim.keymap.set(
      "n",
      "<leader>cG",
      crates.open_repository,
      { silent = true, desc = " Open crate [G]ithub repository" }
    )
    vim.keymap.set("n", "<leader>cD", crates.open_documentation, { silent = true, desc = " Open crate documentation" })
    vim.keymap.set("n", "<leader>cC", crates.open_crates_io, { silent = true, desc = " Open crates.io" })
    vim.keymap.set("n", "<leader>cL", crates.open_lib_rs, { silent = true, desc = " Open lib.rs" })

    vim.keymap.set("n", "<leader>gd", ":!tmux neww gh dash<CR>", { desc = "Open gh dashboard in floating window" })
  end,
}
