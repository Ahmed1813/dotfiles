return {
  "barrett-ruth/import-cost.nvim",
  build = "sh install.sh bun",
  ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  config = function()
    require("import-cost").setup()
  end,
}
