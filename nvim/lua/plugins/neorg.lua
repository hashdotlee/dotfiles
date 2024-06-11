require('nvim-treesitter.configs').setup {
	auto_install = true,
	sync_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true
    }
}

require('neorg').setup {
	load = {
		["core.defaults"] = {}, -- Load all the default modules
		["core.concealer"] = {}, -- Allows for use of icons
		["core.dirman"] = { -- Manage your directories with Neorg
			config = {
				workspaces = {
					work = "~/notes/work",
					personal = "~/notes/personal",
					learn = "~/notes/learn"
				},
				default_workspace = "work"
			}
		},
	}
}
