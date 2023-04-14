vim.api.nvim_create_autocmd('BufWritePre', {pattern='*.go', command='lua vim.lsp.buf.format({async=true})'})
