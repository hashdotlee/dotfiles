require('telescope').setup {
  defaults = {
	layout_config = {
	  prompt_position = "bottom",
      horizontal = {
        preview_cutoff = 0,
      },
	},
	mappings = {
	  i = {
		["<CR>"] = require('telescope.actions').select_default,
	  },
	}
  },
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
vim.keymap.set('n', '<leader>s', builtin.live_grep, {})
