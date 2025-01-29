return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "pyright",
      "ruff",
      "mypy",
      "prettierd",
      "eslint-lsp",
      "typescript-language-server",
      "tailwindcss-language-server"
    },
  },
}
