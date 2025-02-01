local telescope = require "nvchad.configs.telescope"

telescope.defaults.file_ignore_patterns = {
  "node_modules",
  ".venv",
}

return telescope
