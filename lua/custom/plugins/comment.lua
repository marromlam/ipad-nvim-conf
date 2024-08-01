if vim.g.is_ipad then
  return {}
end


return {
  'numToStr/Comment.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    {'JoosepAlviste/nvim-ts-context-commentstring', enable=not vim.g.is_ipad},
  },
  config = function()
    -- import comment plugin safely
    local comment = require 'Comment'

    if not vim.g.is_ipad then
	    local ts_context_commentstring = require 'ts_context_commentstring.integrations.comment_nvim'

	    -- enable comment
	    comment.setup {
	      -- for commenting tsx, jsx, svelte, html files
	      pre_hook = ts_context_commentstring.create_pre_hook(),
	    }
    end
  end,
}
