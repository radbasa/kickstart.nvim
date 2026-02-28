return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      flavour = 'macchiato',
      custom_highlights = function(colors)
        return {
          LineNr = { fg = colors.overlay0 },
          CursorLineNr = { fg = colors.peach, style = { 'bold' } },
        }
      end,
    },
    config = function(_, opts)
      require('catppuccin').setup(opts)
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
