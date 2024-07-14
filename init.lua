-- Init lua

vim.g.os = vim.loop.os_uname().sysname
vim.g.open_command = vim.g.os == 'Darwin' and 'open' or 'xdg-open'

vim.g.dotfiles = vim.env.DOTFILES or vim.fn.expand('~/.dotfiles')
vim.g.vim_dir = vim.g.dotfiles .. '/.config/nvim'

vim.g.projects_directory = vim.fn.expand('~/Projects')
vim.g.personal_directory = vim.g.projects_directory .. '/personal'
vim.g.work_directory = vim.g.projects_directory .. '/work'

vim.g.icloud = vim.fn.expand('~') .. '/Library/Mobile Documents'
vim.g.obsidian = vim.g.icloud .. '/iCloud~md~obsidian/Documents'

-- Leader bindings
vim.g.mapleader = ' ' -- Remap leader key
vim.g.maplocalleader = '\\' -- Local leader is <Space>

-------------------------------------------------------------------------------
-- Global namespace {{{
-------------------------------------------------------------------------------
vim.g.is_ipad = true

local namespace = {
  ui = {
    winbar = { enable = false },
    lastplace = { enable = false },
    statuscolumn = { enable = false },
    statusline = { enable = false },
  },
  -- some vim mappings require a mixture of commandline commands and function
  -- calls this table is place to store lua functions to be called in those
  -- mappings
  mappings = { enable = true },
}

-- This table is a globally accessible store to facilitating accessing
-- helper functions and variables throughout my config
_G.mrl = mrl or namespace
_G.map = vim.keymap.set
_G.P = vim.print

-- }}}

-- If opening from inside neovim terminal, skip {{{
-- if vim.env.NVIM then
--   return require('lazy').setup({ { 'willothy/flatten.nvim', config = true } })
-- end
-- }}}
--------------------------------------------------------------------------------

-- Load modules
require('tools') -- has to be loaded before plugins
require('remaps')
require('keymaps')
require('autocommands')
-- require('custom.globals')
require('options')
require('lazyloader')
-- require('custom.ui')
-- require('external_grep')


if vim.g.is_ipad then
  vim.cmd [[
    " echo 'iSH'
    set redrawtime=10000
    set noai
  ]]
end


-- apply colorscheme
vim.o.background = 'dark' -- or "light"
vim.cmd([[colorscheme gruvbox]])


-- vim: ts=2 sts=2 sw=2 et fdm=marker
