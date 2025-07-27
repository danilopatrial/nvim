vim.g.mapleader = " "  -- map leader -> space key
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)  -- Set (in normal mode - "n") leader + p + v, to access vim cmd Ex, i.e. Explorer
vim.keymap.set("n", "<leader>s", vim.cmd.vsp)  -- leader + s to split screen
vim.keymap.set("i", "<C-x>", "<Esc>", { noremap = true, silent = true })  -- ctrl + x to out insert mode

vim.opt.tabstop = 4  -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4  -- Number of spaces for each indentation step


