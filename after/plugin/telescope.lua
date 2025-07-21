-- Telescope finder from: https://github.com/nvim-telescope/telescope.nvim

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})  -- leader + p + f to open telescope
vim.keymap.set('n', 'C-p', builtin.git_files, {})  -- C + p to open a git file search
vim.keymap.set('n', '<leader>ps', function()  -- leader + p + s to open grep search
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
