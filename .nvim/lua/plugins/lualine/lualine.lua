local M = {
  "nvim-lualine/lualine.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
}

M.config = function()
  local lualine = require "lualine"
  local jskurt_powerline_dark = require "lualine.themes.powerline_dark"
  jskurt_powerline_dark.inactive.a.bg = "darkgray"
  jskurt_powerline_dark.inactive.a.fg = "black"

  -- jskurt_powerline_dark.inactive.b.bg = "#444444"
  jskurt_powerline_dark.inactive.b.fg = "white"
  --
  jskurt_powerline_dark.inactive.c.bg = "#1C1C1C"
  jskurt_powerline_dark.inactive.c.fg = "inactivegray"

  local function tab_dynamic_color()
    if vim.bo.modified then
      return { bg = "#00C8EC", fg = "#000000" }
    else
      return { bg = "#D5FD04", fg = "#000000" }
    end
  end
  local setup = {
    options = {
      icons_enabled = true,
      -- theme = "powerline_dark",
      theme = jskurt_powerline_dark,
      -- component_separators = { left = "", right = "" },
      -- section_separators = { left = "", right = "" },
      component_separators = { left = "|", right = "" },
      section_separators = { left = "", right = "" },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
    },

    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = {
        {
          "filename",
          file_status = true,    -- Displays file status (readonly status, modified status)
          newfile_status = true, -- Display new file status (new file means no write after created)
          path = 1,              -- 0: Just the filename
          -- 1: Relative path
          -- 2: Absolute path
          -- 3: Absolute path, with tilde as the home directory
          -- 4: Filename and parent dir, with tilde as the home directory

          shorting_target = 50, -- Shortens path to leave ' ' spaces in the window
          -- for other components. (terrible name, any suggestions?)
          symbols = {
            modified = "[+]",      -- Text to show when the file is modified.
            readonly = "[-]",      -- Text to show when the file is non-modifiable or readonly.
            unnamed = "[No Name]", -- Text to show for unnamed buffers.
            newfile = "[New]",     -- Text to show for newly created file before first write
          },
        },
      },
      lualine_x = { "searchcount", "selectioncount", "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },

    inactive_sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = {
        {
          "filename",
          file_status = true,    -- Displays file status (readonly status, modified status)
          newfile_status = true, -- Display new file status (new file means no write after created)
          path = 1,              -- 0: Just the filename
          -- 1: Relative path
          -- 2: Absolute path
          -- 3: Absolute path, with tilde as the home directory
          -- 4: Filename and parent dir, with tilde as the home directory

          shorting_target = 50, -- Shortens path to leave ' ' spaces in the window
          -- for other components. (terrible name, any suggestions?)
          symbols = {
            modified = "[+]",      -- Text to show when the file is modified.
            readonly = "[-]",      -- Text to show when the file is non-modifiable or readonly.
            unnamed = "[No Name]", -- Text to show for unnamed buffers.
            newfile = "[New]",     -- Text to show for newly created file before first write
          },
        },
      },
      lualine_x = { "searchcount", "selectioncount", "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },

    tabline = {
      lualine_a = {
        {
          "tabs",
          mode = 2,
          padding = { left = 2, right = 2 },
          max_length = vim.o.columns,
          tabs_color = {
            active = tab_dynamic_color,
            inactive = { bg = "#303030", fg = "#646464" },
          },
          show_modified_status = false,
          -- symbols = {
          -- 	modified = "[+]",
          -- },

          fmt = function(name, context)
            -- Show + if buffer is modified in tab
            local buflist = vim.fn.tabpagebuflist(context.tabnr)
            local winnr = vim.fn.tabpagewinnr(context.tabnr)
            local bufnr = buflist[winnr]
            local mod = vim.fn.getbufvar(bufnr, "&mod")

            -- return name .. (mod == 1 and " +" or "")

            if vim.bo[bufnr].buftype == "" then
              return name .. (mod == 1 and " +" or "")
            else
              vim.bo.modified = false
              for i = 1, #buflist do
                if buflist[i] ~= bufnr then
                  -- Get the name of the previously active buffer
                  local prev_bufname = vim.fn.bufname(buflist[i])

                  if prev_bufname == "" then
                    if vim.fn.bufname(bufnr) == "" then
                      return "file search"
                    elseif string.find(vim.fn.bufname(bufnr), "NvimTree") then
                      return "file tree"
                    elseif string.find(vim.fn.bufname(bufnr), "lazygit") then
                      return "git"
                    end
                    return name
                  end

                  -- Return the name of the previously active buffer
                  return vim.fn.fnamemodify(prev_bufname, ":t")
                end
              end
            end
          end,
        },
      },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },

    winbar = {},
    inactive_winbar = {},
    extensions = {},
  }
  lualine.setup(setup)
end

return M
