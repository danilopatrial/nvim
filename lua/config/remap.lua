vim.g.mapleader = " "  -- map leader -> space key
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)  -- Set (in normal mode - "n") leader + p + v, to access vim cmd Ex, i.e. Explorer
vim.keymap.set("n", "<leader>s", vim.cmd.vsp)  -- leader + s to split screen
vim.keymap.set("i", "<C-x>", "<Esc>", { noremap = true, silent = true })  -- ctrl + x to out insert mode

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
