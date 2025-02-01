local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

lspconfig.rust_analyzer.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  filetypes = { "rust" },
  root_dir = lspconfig.util.root_pattern "Cargo.toml",
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
}

lspconfig.pyright.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  filetypes = { "python" },
  settings = {
    pyright = {
      disableOrganizeImports = true,
      autoSearchPaths = true,
      typeCheckingMode = "off",
    },
  },
}

lspconfig.ruff.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  filetypes = { "python" },
}

local servers_for_nextjs = { "ts_ls", "tailwindcss", "eslint", "emmet_language_server" }

for _, lsp in ipairs(servers_for_nextjs) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    capabilities = nvlsp.capabilities,
  }
end
