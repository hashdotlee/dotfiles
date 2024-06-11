local lsp_zero = require('lsp-zero')

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = { 'tsserver', 'rust_analyzer' },
	handlers = {

		-- this is the "custom handler" for `jdtls`
		-- noop is an empty function that doesn't do anything
		jdtls = lsp_zero.noop,
	}
})

local function organize_imports()
	local params = {
		command = "_typescript.organizeImports",
		arguments = { vim.api.nvim_buf_get_name(0) },
		title = ""
	}
	vim.lsp.buf.execute_command(params)
end



local nvim_lsp = require 'lspconfig'

nvim_lsp.tsserver.setup {
	commands = {
		OrganizeImports = {
			organize_imports,
			description = "Organize Imports"
		}
	}
}

nvim_lsp.pyright.setup{}
nvim_lsp.tailwindcss.setup{}

local cmp = require('cmp')
local cmp_format = lsp_zero.cmp_format()

cmp.setup({
  formatting = cmp_format,
  mapping = cmp.mapping.preset.insert({
    -- scroll up and down the documentation window
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})
