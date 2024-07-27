return {

  -- markdown support
  {
    'plasticboy/vim-markdown',
    disable = false,
    ft = { 'markdown', 'rst' },
  },

  -- syntax highlighting for log files
  {
    'mtdl9/vim-log-highlighting',
    disable = false,
    ft = 'log',
  },

  -- syntax highlighting for kitty conf file
  {
    'fladson/vim-kitty',
    disable = false,
    ft = 'conf',
  },

  -- sets searchable path for filetypes like go so 'gf' works
  {
    'tpope/vim-apathy',
    disable = false,
    ft = { 'go', 'python', 'javascript', 'typescript' },
  },

  {
    'saecki/crates.nvim',
    event = { 'BufRead Cargo.toml' },
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function() require('crates').setup() end,
  },

  {
    'lbrayner/vim-rzip',
    disable = false,
    ft = { 'zip', 'docx', 'xlsx', 'pptx' },
    config = function()
      vim.cmd([[
        " let g:rzipPlugin_extra_ext = '*.docx'
      ]])
    end,
  },

  {
    'tpope/vim-surround',
    event = 'InsertEnter',
  },

  {
    'chrisbra/csv.vim',
    ft = 'csv',
  },

  -- {
  --   -- vimtex
  --   'lervag/vimtex',
  --   ft = { 'tex' },
  --   -- config = function() require('custom.config.vimtex').config() end,
  -- },
  -- {
  --   'marromlam/tex-kitty',
  -- enable = not vim.g.is_ipad,
  --   disable = false,
  --   ft = 'tex',
  --   dir = '/Users/marcos/Projects/personal/tex-kitty',
  --   dev = true,
  --   dependencies = {
  --     'lervag/vimtex',
  --   },
  --   config = function()
  --     require('tex-kitty').setup({
  --       tex_kitty_preview = 1,
  --     })
  --   end,
  -- },
}

-- vim: fdm=marker
