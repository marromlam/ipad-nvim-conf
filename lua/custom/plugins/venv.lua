if vim.g.is_ipad then
  return {}
end

return {
  {
    'linux-cultist/venv-selector.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      'nvim-telescope/telescope.nvim',
      'mfussenegger/nvim-dap-python',
    },
    cmd = {
      'VenvSelect',
      'VenvSelectCached',
    },
    keys = {
      {
        -- Keymap to open VenvSelector to pick a venv.
        '<leader>vs',
        '<cmd>:VenvSelect<cr>',
      },
      {
        -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
        '<leader>vc',
        '<cmd>:VenvSelectCached<cr>',
      },
    },
  },
}
