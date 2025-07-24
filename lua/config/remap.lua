vim.g.mapleader = " "  -- map leader -> space key
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)  -- Set (in normal mode - "n") leader + p + v, to access vim cmd Ex, i.e. Explorer
vim.keymap.set("n", "<leader>s", vim.cmd.vsp)  -- leader + s to split screen
vim.keymap.set("i", "<leader><Tab>", "<Esc>", { noremap = true, silent = true })  -- leader + tab to out insert mode

