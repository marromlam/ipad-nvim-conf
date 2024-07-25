return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    event = UIEnter,
    config = function()
      require('gruvbox').setup {
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = true,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = 'hard', -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {
          SignColumn = { bg = '#1d2021' },
        },
        dim_inactive = false,
        transparent_mode = false,
      }
    end,
  },
}
