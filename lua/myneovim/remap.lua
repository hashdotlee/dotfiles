vim.g.mapleader = " "
vim.keymap.set("n", "<F8>", ":TagbarToggle<CR>")
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-i>", ":OrganizeImports<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>f", ":Prettier<CR>")
vim.keymap.set("n", ";n", ":Neorg keybind all core.dirman.new.note<CR>")
vim.keymap.set("n", ";r", ":Neorg return<CR>")
vim.keymap.set("n", ";;", ":Neorg index<CR>")


vim.cmd[[
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
]]
