return {
  -- Treesitter italic rules to match VS Code
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
  },

  -- Custom highlight groups
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      local set = vim.api.nvim_set_hl

      -- Italicize these (matching your VS Code scopes)
      local italic_groups = {
        '@comment',
        '@keyword',
        '@keyword.return',
        '@keyword.import',
        '@keyword.control',
        '@type',
        '@type.builtin',
        '@type.qualifier',
        '@storageclass',
        '@function.macro',
        '@method',
        '@attribute',
        '@constant.builtin',
      }

      for _, group in ipairs(italic_groups) do
        set(0, group, { italic = true })
      end

      -- Remove italics from these (matching your VS Code exclusions)
      local no_italic = {
        '@operator',
        '@number',
        '@number.float',
        '@number.integer',
      }

      for _, group in ipairs(no_italic) do
        set(0, group, { italic = false })
      end
    end,
  },
}
