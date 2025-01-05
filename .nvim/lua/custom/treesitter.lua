local M = {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
}

M.config = function()
  local nvim_treesitter_config = require("nvim-treesitter.configs")
  local setup = {
    -- one of "all" or a list of languages
    ensure_installed = {
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",
      "scss",
      "lua",
      "markdown",
      "markdown_inline",
      "vim",
      "json",
      "dockerfile",
      "http",
      "bash",
      "ssh_config",
      "python",
      "go",
      "graphql",
      "regex",
      "yaml",
    },
    sync_install = false,
    highlight = {
      -- disable because of an error. don't know why.
      -- false will disable the whole extension
      enable = true,

      -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
      -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
      -- the name of the parser)
      -- list of language that will be disabled
      disable = {},
    },
    autopairs = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  }

  nvim_treesitter_config.setup(setup)
end

return M
