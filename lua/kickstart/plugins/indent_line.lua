---@module 'lazy'
---@type LazySpec
return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',

    opts = {
      indent = {
        char = '┃',
        tab_char = '┃',
        highlight = {
          'IndentRed',
          'IndentYellow',
          'IndentBlue',
          'IndentOrange',
          'IndentGreen',
          'IndentViolet',
          'IndentCyan',
        },
      },

      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
        highlight = {
          'IndentRedActive',
          'IndentYellowActive',
          'IndentBlueActive',
          'IndentOrangeActive',
          'IndentGreenActive',
          'IndentVioletActive',
          'IndentCyanActive',
        },
      },

      exclude = {
        filetypes = { 'lua' },
      },
    },

    config = function(_, opts)
      local hooks = require 'ibl.hooks'

      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        -- dim guides
        vim.api.nvim_set_hl(0, 'IndentRed', { fg = '#8B3A3A' })
        vim.api.nvim_set_hl(0, 'IndentYellow', { fg = '#8A6E2F' })
        vim.api.nvim_set_hl(0, 'IndentBlue', { fg = '#3A5F8A' })
        vim.api.nvim_set_hl(0, 'IndentOrange', { fg = '#8A5A3A' })
        vim.api.nvim_set_hl(0, 'IndentGreen', { fg = '#4F7A52' })
        vim.api.nvim_set_hl(0, 'IndentViolet', { fg = '#6B4F8A' })
        vim.api.nvim_set_hl(0, 'IndentCyan', { fg = '#3F7A7A' })

        -- active scope
        vim.api.nvim_set_hl(0, 'IndentRedActive', { fg = '#FF6B6B', bold = true })
        vim.api.nvim_set_hl(0, 'IndentYellowActive', { fg = '#FFD166', bold = true })
        vim.api.nvim_set_hl(0, 'IndentBlueActive', { fg = '#7DCFFF', bold = true })
        vim.api.nvim_set_hl(0, 'IndentOrangeActive', { fg = '#F4A261', bold = true })
        vim.api.nvim_set_hl(0, 'IndentGreenActive', { fg = '#A3E635', bold = true })
        vim.api.nvim_set_hl(0, 'IndentVioletActive', { fg = '#D8B4FE', bold = true })
        vim.api.nvim_set_hl(0, 'IndentCyanActive', { fg = '#67E8F9', bold = true })
      end)

      require('ibl').setup(opts)
    end,
  },
}
