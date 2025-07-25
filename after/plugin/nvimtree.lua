
local tree = require("nvim-tree")

tree.setup()

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { bg = "NONE" })

-- Automatically opens nvim tree on initialization.
--vim.api.nvim_create_autocmd("VimEnter", {
    --    callback = function()
        --        require("nvim-tree.api").tree.open()
        --    end
        --})
