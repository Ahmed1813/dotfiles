return {
  "neovim/nvim-lspconfig",
  config = function()
    require "configs.lspconfig"
    require "plugins.configs.lspconfig"
  end,
}
