-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  { 'catppuccin/nvim', name = 'catppuccin' },
  {
    'ishan9299/nvim-solarized-lua',
    config = function()
      vim.o.termguicolors = true
      vim.o.background = 'light'

      -- vim.cmd 'colorscheme solarized'
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    config = function()
      require('rose-pine').setup {
        styles = {
          italic = false,
        },
      }

      vim.cmd 'colorscheme rose-pine-main'
    end,
  },
  {
    'flayshon/snapcol.nvim',
    opts = {
      filetypes = nil,
    },
  },
}
