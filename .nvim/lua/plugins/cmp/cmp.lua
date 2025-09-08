local M = {
  "hrsh7th/nvim-cmp",
  version = "*",
  event = "InsertEnter",
  dependencies = {
    {
      "hrsh7th/cmp-nvim-lsp",
      event = "InsertEnter",
    },
    {
      "hrsh7th/cmp-buffer",
      event = "InsertEnter",
    },
    {
      "hrsh7th/cmp-path",
      event = "InsertEnter",
    },
    {
      "L3MON4D3/LuaSnip",
      version = "v2.*",
      event = "InsertEnter",
    },
    {
      "saadparwaiz1/cmp_luasnip",
      event = "InsertEnter",
    },
    {
      "rafamadriz/friendly-snippets",
      event = "InsertEnter",
    },
  },
}

M.config = function()
  local luasnip = require "luasnip"
  local cmp = require "cmp"

  -- load snippets
  require("luasnip.loaders.from_vscode").lazy_load()

  local setup = {
    mapping = {
      ["<C-k>"] = cmp.mapping.select_prev_item(),
      ["<C-j>"] = cmp.mapping.select_next_item(),
      ["<CR>"] = cmp.mapping.confirm { select = false },
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif luasnip.locally_jumpable(1) then
          luasnip.jump(1)
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif luasnip.locally_jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, { "i", "s" }),
    },
    sources = {
      { name = "nvim_lsp" }, -- lsp
      { name = "buffer" },   -- text within current buffer
      { name = "path" },     -- file system paths
      { name = "luasnip" },  -- snippets
    },
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        luasnip.lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      completion = cmp.config.window.bordered {
        border = "rounded", --single, double, rounded, solid, shadow
      },
      documentation = cmp.config.window.bordered {
        border = "rounded",
      },
    },

    -- use transparency
    -- window = {
    -- 	completion = cmp.config.window.bordered(),
    -- 	documentation = cmp.config.window.bordered(),
    -- },
  }

  cmp.setup(setup)
end

return M
