local M = {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {},
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
}

M.config = function()
  local render_markdown = require "render-markdown"
  local setup = {
    file_types = { "markdown" },
    render_modes = { "n", "v", "i", "c" },
    indent = {
      enabled = false,
      per_level = 0,
    },
    heading = {
      position = "inline",
      icons = { "# ", "## ", "### ", "#### ", "##### ", "###### " },
      -- icons = { "#[H1]", "##[H2]", "###[H3]", "####[H4]", "#####[H5]", "######[H6]" },
      -- icons = { "[H1]#", "[H2]##", "[H3]###", "[H4]####", "[H5]#####", "[H6]######" },
    },
    code = {
      border = "thin",
      -- Used above code blocks for thin border
      above = "∙",
      -- Used below code blocks for thin border
      below = "∙",
      highlight = "RenderMarkdownCode",
      -- Highlight for inline code
      highlight_inline = "RenderMarkdownCodeInline",
    },
    bullet = {
      -- Turn on / off list bullet rendering
      enabled = true,
      -- Replaces '-'|'+'|'*' of 'list_item'
      -- How deeply nested the list is determines the 'level'
      -- The 'level' is used to index into the array using a cycle
      -- If the item is a 'checkbox' a conceal is used to hide the bullet instead
      -- icons = { '●', '○', '◆', '◇' },
      icons = { "•", "◦", "‣", "⁃" },
      -- Highlight for the bullet icon
      highlight = "RenderMarkdownBullet",
    },
    checkbox = {
      unchecked = { icon = "🌑", highlight = "RenderMarkdownUnchecked" },
      checked = { icon = "🌕", highlight = "RenderMarkdownChecked" },
      custom = {
        inprogress_1 = { raw = "[.]", rendered = "🌘", highlight = "RenderMarkdownTodo" },
        inprogress_2 = { raw = "[o]", rendered = "🌗", highlight = "RenderMarkdownTodo" },
        inprogress_3 = { raw = "[O]", rendered = "🌖", highlight = "RenderMarkdownTodo" },
      },
    },
    link = {
      highlight = "RenderMarkdownLink",
    },
  }

  render_markdown.setup(setup)

  vim.treesitter.language.register("markdown", "vimwiki")
end

return M
