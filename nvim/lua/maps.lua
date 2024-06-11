vim.g.mapleader = " "


vim.keymap.set("n", ";ev", ":e $HOME/.config/nvim <CR>")
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle <CR>")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<leader>q", ":q <CR>")
vim.keymap.set("n", "<C-i>", ":OrganizeImports <CR>")

-- Neorg
vim.keymap.set("n", ";wl", ":Neorg workspace learn<CR>")
vim.keymap.set("n", ";ww", ":Neorg workspace work<CR>")
vim.keymap.set("n", ";wp", ":Neorg workspace personal<CR>")
vim.keymap.set("n", ";;", ":Neorg index<CR>")
vim.keymap.set("n", ";jt", ":Neorg journal template <CR>")
vim.keymap.set("n", ";jj", ":Neorg journal today <CR>")
vim.keymap.set("n", ";jh", ":Neorg journal yesterday <CR>")
vim.keymap.set("n", ";jk", ":Neorg journal tomorrow <CR>")
vim.keymap.set("n", ";td", ":Neorg keybind all core.qol.todo_items.todo.task_done <CR>")
vim.keymap.set("n", ";tu", ":Neorg keybind all core.qol.todo_items.todo.task_undone <CR>")
vim.keymap.set("n", ";tp", ":Neorg keybind all core.qol.todo_items.todo.task_pending <CR>")
vim.keymap.set("n", "; ", ":Telescope neorg find_linkable <CR>")
vim.keymap.set("n", ";n", ":Neorg keybind all core.dirman.new.note <CR>")
vim.keymap.set("n", ";r", ":Neorg return <CR>")

-- LSP
vim.keymap.set("n", "<leader>f", ":Prettier<CR>")
vim.keymap.set("n", "ff", ":lua vim.lsp.buf.format()<CR>")
vim.keymap.set("n", "ga", ":lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "gl", ":lua vim.diagnostic.open_float()<CR>")
vim.keymap.set("n", "]d", ":lua vim.diagnostic.goto_next()<CR>")
vim.keymap.set("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>")

-- Trouble
-- Lua
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
