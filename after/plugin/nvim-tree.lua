-- empty setup using defaults
require("nvim-tree").setup({
    diagnostics = {
        enable = true,
        show_on_dirs = false,
        show_on_open_dirs = true,
        debounce_delay = 50,
    }
})
