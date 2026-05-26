return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Optional, for icons
  config = function()
    -- This function runs ONLY after the plugin is successfully downloaded
    require('lualine').setup {
      options = {
        theme = 'auto',
        section_separators = { left = '', right = '' },
        component_separators = { left = '|', right = '|' },
      },
    }
  end,
}
