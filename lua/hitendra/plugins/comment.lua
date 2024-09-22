return {
	'numToStr/Comment.nvim',
	event = { "BufReadPre", "BufNewFile" },
	lazy = false,
	config = function()
		local prehook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook()
		require('Comment').setup({
			pre_hook = prehook,
			post_hook = nil,
		})
	end,
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
		'nvim-treesitter/nvim-treesitter',
	}
}
