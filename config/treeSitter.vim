lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
      disable = {"html"},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
      "javascript",
      "jsdoc",
      "css",
      "graphql",
      "html",
      "tsx",
      "scss",
      "json",
      "vim",
      "toml"
      }
}
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
EOF
